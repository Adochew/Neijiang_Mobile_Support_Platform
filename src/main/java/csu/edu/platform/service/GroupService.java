package csu.edu.platform.service;

import csu.edu.platform.entity.GroupHistory;
import csu.edu.platform.entity.GroupInfo;
import csu.edu.platform.entity.GroupMember;
import csu.edu.platform.vo.ChatVO;

import java.util.List;

public interface GroupService {
    String getImageUrl(Integer groupId);
    Boolean setImageUrl(Integer groupId, String imageUrl);

    GroupInfo getGroupInfoByGroupId(Integer groupId);
    GroupInfo getGroupInfoByOwnerId(Integer ownerId);
    List<GroupInfo> getGroupInfoList();
    List<GroupInfo> getGroupInfoListByAccountId(Integer accountId);
    List<GroupInfo> getGroupInfoListByKeyword(String keyword);
    Boolean addGroupInfo(GroupInfo groupInfo);
    Boolean updateGroupInfo(GroupInfo groupInfo);
    Boolean deleteGroupInfo(Integer groupId);

    List<ChatVO> getGroupMemberByGroupId(Integer groupId);
    Boolean addGroupMember(GroupMember groupMember);
    Boolean deleteGroupMember(GroupMember groupMember);

    List<GroupHistory> getGroupHistoryByGroupId(Integer groupId);
    Boolean addGroupHistory(GroupHistory groupHistory);
}
