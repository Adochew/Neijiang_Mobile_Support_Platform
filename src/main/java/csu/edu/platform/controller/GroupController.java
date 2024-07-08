package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.entity.GroupHistory;
import csu.edu.platform.entity.GroupInfo;
import csu.edu.platform.entity.GroupMember;
import csu.edu.platform.service.GroupService;
import csu.edu.platform.service.OssService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@RestController
@RequestMapping("/groups")
public class GroupController {
    @Autowired
    private GroupService groupService;
    @Autowired
    private OssService ossService;

    /**
     * 根据群组ID获取群组信息
     * @param groupId 群组ID
     * @return 群组信息
     */
    @GetMapping("/{groupId}")
    public ResponseEntity<Object> getGroupInfoByGroupId(@PathVariable Integer groupId) {
        return ResponseUtil.success(groupService.getGroupInfoByGroupId(groupId));
    }

    /**
     * 获取所有群组信息
     * @return 所有群组信息列表
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllGroups() {
        return ResponseUtil.success(groupService.getGroupInfoList());
    }

    /**
     * 根据账户ID获取群组信息
     * @param accountId 账户ID
     * @return 群组信息列表
     */
    @GetMapping("/accounts/{accountId}")
    public ResponseEntity<Object> getGroupInfoByAccountId(@PathVariable Integer accountId) {
        return ResponseUtil.success(groupService.getGroupInfoListByAccountId(accountId));
    }

    /**
     * 根据关键字搜索群组信息
     * @param request 包含搜索关键字的请求体
     * @return 符合关键字的群组信息列表
     */
    @PostMapping("/search")
    public ResponseEntity<Object> getGroupInfoByKeyword(@RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(groupService.getGroupInfoListByKeyword(keyword));
    }

    /**
     * 添加群组信息
     * @param groupInfo 群组信息实体
     * @param image 群组图片文件
     * @return 添加结果
     */
    @PostMapping("")
    public ResponseEntity<Object> addGroupInfo(@RequestPart GroupInfo groupInfo,
                                               @RequestPart(required = false) MultipartFile image) {
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            groupInfo.setImageUrl(imageUrl);
        }
        if (groupService.addGroupInfo(groupInfo)) {
            return ResponseUtil.success("GroupInfo added.");
        } else {
            return ResponseUtil.error("GroupInfo not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新群组信息
     * @param groupInfo 群组信息实体
     * @param image 群组图片文件
     * @return 更新结果
     */
    @PutMapping("")
    public ResponseEntity<Object> updateGroupInfo(@RequestPart GroupInfo groupInfo,
                                                  @RequestPart(required = false) MultipartFile image) {
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            groupInfo.setImageUrl(imageUrl);
        }
        if (groupService.updateGroupInfo(groupInfo)) {
            return ResponseUtil.success("GroupInfo updated.");
        } else {
            return ResponseUtil.error("GroupInfo not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除群组信息
     * @param groupId 群组ID
     * @return 删除结果
     */
    @DeleteMapping("/{groupId}")
    public ResponseEntity<Object> deleteGroupInfo(@PathVariable Integer groupId) {
        GroupInfo groupInfo = groupService.getGroupInfoByGroupId(groupId);
        ossService.deleteFile(groupInfo.getImageUrl());
        if (groupService.deleteGroupInfo(groupId)) {
            return ResponseUtil.success("GroupInfo deleted.");
        } else {
            return ResponseUtil.error("GroupInfo not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据群组ID获取群组成员
     * @param groupId 群组ID
     * @return 群组成员列表
     */
    @GetMapping("/members/{groupId}")
    public ResponseEntity<Object> getGroupMembersByGroupId(@PathVariable Integer groupId) {
        return ResponseUtil.success(groupService.getGroupMemberByGroupId(groupId));
    }

    /**
     * 添加群组成员
     * @param groupMember 群组成员实体
     * @return 添加结果
     */
    @PostMapping("/members")
    public ResponseEntity<Object> addGroupMember(@RequestBody GroupMember groupMember) {
        if (groupService.addGroupMember(groupMember)) {
            return ResponseUtil.success("GroupMember added.");
        } else {
            return ResponseUtil.error("GroupMember not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除群组成员
     * @param groupMember 群组成员实体
     * @return 删除结果
     */
    @DeleteMapping("/members")
    public ResponseEntity<Object> deleteGroupMember(@RequestBody GroupMember groupMember) {
        if (groupService.deleteGroupMember(groupMember)) {
            return ResponseUtil.success("GroupMember deleted.");
        } else {
            return ResponseUtil.error("GroupMember not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据群组ID获取群组历史记录
     * @param groupId 群组ID
     * @return 群组历史记录列表
     */
    @GetMapping("/histories/{groupId}")
    public ResponseEntity<Object> getGroupHistoriesByGroupId(@PathVariable Integer groupId) {
        return ResponseUtil.success(groupService.getGroupHistoryByGroupId(groupId));
    }

    /**
     * 添加群组历史记录
     * @param groupHistory 群组历史记录实体
     * @return 添加结果
     */
    @PostMapping("/histories")
    public ResponseEntity<Object> addGroupHistories(@RequestBody GroupHistory groupHistory) {
        if (groupService.addGroupHistory(groupHistory)) {
            return ResponseUtil.success("GroupHistory added.");
        } else {
            return ResponseUtil.error("GroupHistory not added.", HttpStatus.BAD_REQUEST);
        }
    }
}
