package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.GroupHistory;
import csu.edu.platform.entity.GroupInfo;
import csu.edu.platform.entity.GroupMember;
import csu.edu.platform.persistence.GroupHistoryMapper;
import csu.edu.platform.persistence.GroupInfoMapper;
import csu.edu.platform.persistence.GroupMemberMapper;
import csu.edu.platform.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("groupService")
public class GroupServiceImpl implements GroupService {
    @Autowired
    private GroupInfoMapper groupInfoMapper;
    @Autowired
    private GroupMemberMapper groupMemberMapper;
    @Autowired
    private GroupHistoryMapper groupHistoryMapper;

    public GroupInfo getGroupInfoByGroupId(Integer groupId) {
        return groupInfoMapper.selectById(groupId);
    }
    public List<GroupInfo> getGroupInfoList(){
        return groupInfoMapper.selectList(null);
    }
    public List<GroupInfo> getGroupInfoListByUserId(Integer userId){
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        List<GroupMember> groupMembers = groupMemberMapper.selectList(queryWrapper);
        List<GroupInfo> groupInfoList = new ArrayList<>();
        for(GroupMember groupMember : groupMembers){
            GroupInfo groupInfo = groupInfoMapper.selectById(groupMember.getGroupId());
            groupInfoList.add(groupInfo);
        }
        return groupInfoList;
    }
    public List<GroupInfo> getGroupInfoListByKeyword(String keyword) {
        QueryWrapper<GroupInfo> queryWrapper = new QueryWrapper<GroupInfo>();
        queryWrapper.like("group_name", keyword);
        return groupInfoMapper.selectList(queryWrapper);
    }
    public Boolean addGroupInfo(GroupInfo groupInfo) {
        return groupInfoMapper.insert(groupInfo) != 0;
    }
    public Boolean updateGroupInfo(GroupInfo groupInfo) {
        return groupInfoMapper.updateById(groupInfo) != 0;
    }
    public Boolean deleteGroupInfo(Integer groupId) {
        return groupInfoMapper.deleteById(groupId) != 0;
    }

    public List<GroupMember> getGroupMemberByGroupId(Integer groupId) {
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        return groupMemberMapper.selectList(queryWrapper);
    }
    public Boolean addGroupMember(GroupMember groupMember) {
        return groupMemberMapper.insert(groupMember) != 0;
    }
    public Boolean deleteGroupMember(Integer groupId, Integer userId) {
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        queryWrapper.eq("user_id", userId);
        return groupMemberMapper.delete(queryWrapper) != 0;
    }

    List<GroupHistory> getGroupHistoryByGroupId(Integer groupId) {
        QueryWrapper<GroupHistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        return groupHistoryMapper.selectList(queryWrapper);
    }
    Boolean addGroupHistory(GroupHistory groupHistory) {
        return groupHistoryMapper.insert(groupHistory) != 0;
    }
}
