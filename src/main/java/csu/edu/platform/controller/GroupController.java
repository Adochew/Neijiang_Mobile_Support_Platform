package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.service.GroupService;
import csu.edu.platform.service.OssService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/groups")
public class GroupController {
    @Autowired
    private GroupService groupService;
    @Autowired
    private OssService ossService;

    @GetMapping("/{groupId}")
    public ResponseEntity<Object> getGroupInfoByGroupId(@PathVariable Integer groupId) {
        return ResponseUtil.success(groupService.getGroupInfoByGroupId(groupId));
    }

    @GetMapping("")
    @RoleRequired({1})
    public ResponseEntity<Object> getAllGroups() {
        return ResponseUtil.success(groupService.getGroupInfoList());
    }

    @GetMapping("/accounts/{accountId}")
    public ResponseEntity<Object> getGroupInfoByAccountId(@PathVariable Integer accountId) {
        return ResponseUtil.success(groupService.getGroupInfoListByAccountId(accountId));
    }

    @PostMapping("/search")
    public ResponseEntity<Object> getGroupInfoByKeyword(@RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(groupService.getGroupInfoListByKeyword(keyword));
    }
}
