package csu.edu.platform.service.Impl;

import csu.edu.platform.service.ChatService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@Service("chatService")
public class ChatServiceImpl implements ChatService {
    private final ConcurrentHashMap<Integer, List<Integer>> groupUsers = new ConcurrentHashMap<>();

    public void addUserToGroup(Integer roomId, Integer userId) {
        groupUsers.computeIfAbsent(roomId, k -> new CopyOnWriteArrayList<>()).add(userId);
    }

    public void removeUserFromGroup(Integer roomId, Integer userId) {
        List<Integer> users = groupUsers.get(roomId);
        if (users != null) {
            users.remove(userId);
            if (users.isEmpty()) {
                groupUsers.remove(roomId);
            }
        }
    }

    public List<Integer> getUsersInGroup(Integer groupId) {
        return groupUsers.getOrDefault(groupId, new CopyOnWriteArrayList<>());
    }
}
