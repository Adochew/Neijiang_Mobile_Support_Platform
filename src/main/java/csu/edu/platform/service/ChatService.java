package csu.edu.platform.service;

import java.util.List;

public interface ChatService {
    void addUserToGroup(Integer groupId, Integer userId);
    void removeUserFromGroup(Integer groupId, Integer userId);
    List<Integer> getUsersInGroup(Integer groupId);
}
