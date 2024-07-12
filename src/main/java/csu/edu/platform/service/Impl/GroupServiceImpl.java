package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.*;
import csu.edu.platform.persistence.GroupHistoryMapper;
import csu.edu.platform.persistence.GroupInfoMapper;
import csu.edu.platform.persistence.GroupMemberMapper;
import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.GroupService;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.service.UserService;
import csu.edu.platform.vo.ChatVO;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("groupService")
public class GroupServiceImpl implements GroupService {
    @Autowired
    private GroupInfoMapper groupInfoMapper;
    @Autowired
    private AccountService accountService;
    @Autowired
    private UserService userService;
    @Autowired
    private MerchantService merchantService;
    @Autowired
    private GroupMemberMapper groupMemberMapper;
    @Autowired
    private GroupHistoryMapper groupHistoryMapper;

    public String getImageUrl(Integer groupId) {
        return groupInfoMapper.selectById(groupId).getImageUrl();
    }
    public Boolean setImageUrl(Integer groupId, String imageUrl) {
        GroupInfo groupInfo = groupInfoMapper.selectById(groupId);
        groupInfo.setImageUrl(imageUrl);
        return groupInfoMapper.updateById(groupInfo) != 0 ;
    }
    public GroupInfo getGroupInfoByGroupId(Integer groupId) {
        return groupInfoMapper.selectById(groupId);
    }
    public List<GroupInfo> getGroupInfoList(){
        return groupInfoMapper.selectList(null);
    }
    public List<GroupInfo> getGroupInfoListByAccountId(Integer accountId) {
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account_id", accountId);
        List<GroupMember> groupMembers = groupMemberMapper.selectList(queryWrapper);
        Set<Integer> processedGroupIds = new HashSet<>();
        List<GroupInfo> groupInfoList = new ArrayList<>();
        for (GroupMember groupMember : groupMembers) {
            Integer groupId = groupMember.getGroupId();
            if (!processedGroupIds.contains(groupId)) {
                GroupInfo groupInfo = groupInfoMapper.selectById(groupId);
                if (groupInfo != null) {
                    groupInfoList.add(groupInfo);
                    processedGroupIds.add(groupId);
                }
            }
        }
        return groupInfoList;
    }

    public List<GroupInfo> getGroupInfoListByKeyword(String keyword) {
        QueryWrapper<GroupInfo> queryWrapper = new QueryWrapper<GroupInfo>();
        queryWrapper.like("group_name", keyword);
        return groupInfoMapper.selectList(queryWrapper);
    }
    public Boolean addGroupInfo(GroupInfo groupInfo) {
        if(groupInfoMapper.insert(groupInfo) != 0){
            GroupMember groupMember = new GroupMember();
            groupMember.setGroupId(groupInfo.getGroupId());
            groupMember.setAccountId(groupInfo.getOwnerId());
            groupMember.setRole("管理员");
            GroupHistory groupHistory = new GroupHistory();
            groupHistory.setGroupId(groupInfo.getGroupId());
            groupHistory.setAccountId(groupInfo.getOwnerId());
            groupHistory.setAction("create");
            groupHistory.setDetails("群组创建");
            return addGroupMember(groupMember) && addGroupHistory(groupHistory);
        }
        return false;
    }
    public Boolean updateGroupInfo(GroupInfo groupInfo) {
        return groupInfoMapper.updateById(groupInfo) != 0;
    }
    public Boolean deleteGroupInfo(Integer groupId) {
        return groupInfoMapper.deleteById(groupId) != 0;
    }

    public List<ChatVO> getGroupMemberByGroupId(Integer groupId) {
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        List<ChatVO> chatVOList = new ArrayList<>();
        for(GroupMember groupMember : groupMemberMapper.selectList(queryWrapper)){
            SystemAccount systemAccount = accountService.getSystemAccountByAccountId(groupMember.getAccountId());
            String name;
            String imageUrl;
            if(systemAccount.getRoleId() == 2){
                MerchantVO merchantVO = merchantService.getMerchantVOByAccountId(systemAccount.getAccountId());
                name = merchantVO.getName();
                imageUrl = merchantVO.getImageUrl();
            }
            else{
                UserInfo userInfo = userService.getUserInfoByAccountId(systemAccount.getAccountId());
                name = userInfo.getName();
                imageUrl = userInfo.getImageUrl();
            }
            ChatVO chatVO = new ChatVO(groupMember, name, imageUrl);
            chatVOList.add(chatVO);
        }
        return chatVOList;
    }
    public Boolean addGroupMember(GroupMember groupMember) {
        GroupHistory groupHistory = new GroupHistory();
        groupHistory.setGroupId(groupMember.getGroupId());
        groupHistory.setAccountId(groupMember.getAccountId());
        groupHistory.setAction("add");
        groupHistory.setDetails("添加成员");
        return groupMemberMapper.insert(groupMember) != 0 && addGroupHistory(groupHistory);
    }
    public Boolean deleteGroupMember(GroupMember groupMember) {
        QueryWrapper<GroupMember> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupMember.getGroupId());
        queryWrapper.eq("account_id", groupMember.getAccountId());
        return groupMemberMapper.delete(queryWrapper) != 0;
    }

    public List<GroupHistory> getGroupHistoryByGroupId(Integer groupId) {
        QueryWrapper<GroupHistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        return groupHistoryMapper.selectList(queryWrapper);
    }
    public Boolean addGroupHistory(GroupHistory groupHistory) {
        return groupHistoryMapper.insert(groupHistory) != 0;
    }
}
