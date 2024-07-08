package csu.edu.platform.controller;

import csu.edu.platform.model.Message;
import csu.edu.platform.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ChatController {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @Autowired
    private ChatService chatService;

    @Autowired
    public ChatController(SimpMessagingTemplate messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
    }

    // 全用户广播
    @MessageMapping("/send_all_messages")
    @SendTo("/topic/messages")
    public Message sendAll(Message message) {
        return message;
    }

    // 群内广播
    @MessageMapping("/send_group_messages")
    public void sendGroup(Message message, SimpMessageHeaderAccessor headerAccessor) {
        // 从会话属性中获取房间号和用户ID
        Integer group = (Integer) headerAccessor.getSessionAttributes().get("group");
        Integer from = (Integer) headerAccessor.getSessionAttributes().get("userId");
        message.setGroup(group);
        message.setFrom(from);

        // 发送给房间内所有用户
        messagingTemplate.convertAndSend("/topic/messages/" + group, message);
        System.out.println(from + " send message to group" + group);
    }

    // 私聊
    @MessageMapping("/send_messages")
    @SendToUser("/messages")
    public void send(Message message, SimpMessageHeaderAccessor headerAccessor) {
        // 从会话属性中获取房间号和用户ID
        Integer group = (Integer) headerAccessor.getSessionAttributes().get("group");
        Integer from = (Integer) headerAccessor.getSessionAttributes().get("userId");
        message.setGroup(group);
        message.setFrom(from);

        if (message.getTo() != null) {
            // 发送给指定用户
            messagingTemplate.convertAndSendToUser(message.getTo().toString(), "/messages", message);
        }
    }

    // 加入群组聊天
    @MessageMapping("/join")
    public void join(SimpMessageHeaderAccessor headerAccessor, Message message) {
        Integer group = message.getGroup();
        Integer userId = message.getFrom();
        headerAccessor.getSessionAttributes().put("group", group);
        headerAccessor.getSessionAttributes().put("userId", userId);

        chatService.addUserToGroup(group, userId);
        System.out.println(userId + " join group " + group);
    }

    // 离开群组聊天
    @MessageMapping("/leave")
    public void leave(SimpMessageHeaderAccessor headerAccessor) {
        Integer group = (Integer) headerAccessor.getSessionAttributes().get("group");
        Integer userId = (Integer) headerAccessor.getSessionAttributes().get("userId");

        if (group != null && userId != null) {
            chatService.removeUserFromGroup(group, userId);
        }
    }
}
