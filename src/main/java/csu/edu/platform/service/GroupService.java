package csu.edu.platform.service;

import csu.edu.platform.entity.GroupHistory;
import csu.edu.platform.entity.GroupInfo;
import csu.edu.platform.entity.GroupMember;

import java.util.List;

public interface GroupService {
    GroupInfo getGroupInfoByGroupId(Integer groupId);
    List<GroupInfo> getGroupInfoList();
    List<GroupInfo> getGroupInfoListByUserId(Integer accountId);
    List<GroupInfo> getGroupInfoListByKeyword(String keyword);
    Boolean addGroupInfo(GroupInfo groupInfo);
    Boolean updateGroupInfo(GroupInfo groupInfo);
    Boolean deleteGroupInfo(Integer groupId);

    List<GroupMember> getGroupMemberByGroupId(Integer groupId);
    Boolean addGroupMember(GroupMember groupMember);
    Boolean deleteGroupMember(Integer groupId, Integer accountId);

    List<GroupHistory> getGroupHistoryByGroupId(Integer groupId);
    Boolean addGroupHistory(GroupHistory groupHistory);
}