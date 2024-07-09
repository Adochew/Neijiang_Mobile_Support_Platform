package csu.edu.platform.controller;

import csu.edu.platform.entity.GroupHistory;
import csu.edu.platform.model.Message;
import csu.edu.platform.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class ChatController {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;
    @Autowired
    private GroupService groupService;

    @Autowired
    public ChatController(SimpMessagingTemplate messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
    }

    /**
     * 处理群组消息
     *
     * @param message        收到的消息对象
     * @param headerAccessor 消息头访问器，包含消息相关的元数据
     */
    @MessageMapping("/send_group_messages")
    public void sendGroup(Message message, SimpMessageHeaderAccessor headerAccessor) {
        Integer from = message.getFrom();
        Integer group = message.getGroup();

        // 创建群组消息历史记录
        GroupHistory groupHistory = new GroupHistory(from, group, message.getContent());
        groupService.addGroupHistory(groupHistory);

        // 向指定群组的所有用户发送消息
        messagingTemplate.convertAndSend("/topic/messages/" + group, message);
        System.out.println(from + " 向群组 " + group + " 发送了消息");
    }

    /**
     * 处理用户加入群组
     *
     * @param headerAccessor 消息头访问器，包含消息相关的元数据
     * @param message        收到的消息对象，包含用户信息和群组ID
     */
    @MessageMapping("/join")
    public void join(SimpMessageHeaderAccessor headerAccessor, Message message) {
        Integer from = message.getFrom();
        Integer group = message.getGroup();

        // 创建用户加入群组的历史记录
        GroupHistory groupHistory = new GroupHistory(from, group, "join", null);
        groupService.addGroupHistory(groupHistory);

        System.out.println(from + " 加入了群组 " + group);
    }

    /**
     * 处理用户离开群组
     *
     * @param headerAccessor 消息头访问器，包含消息相关的元数据
     * @param message        收到的消息对象，包含用户信息和群组ID
     */
    @MessageMapping("/leave")
    public void leave(SimpMessageHeaderAccessor headerAccessor, Message message) {
        Integer from = message.getFrom();
        Integer group = message.getGroup();

        // 创建用户离开群组的历史记录
        GroupHistory groupHistory = new GroupHistory(from, group, "leave", null);
        groupService.addGroupHistory(groupHistory);

        System.out.println(from + " 离开了群组 " + group);
    }
}
