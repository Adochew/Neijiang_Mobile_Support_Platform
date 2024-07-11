package csu.edu.platform.vo;

import csu.edu.platform.entity.GroupMember;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
public class ChatVO {
    private Integer groupId;
    private Integer accountId;
    private String role;
    private LocalDateTime createdAt;
    private String name;
    private String imageUrl;

    public ChatVO(GroupMember groupMember, String name, String imageUrl) {
        this.groupId = groupMember.getGroupId();
        this.accountId = groupMember.getAccountId();
        this.role = groupMember.getRole();
        this.createdAt = groupMember.getCreatedAt();
        this.name = name;
        this.imageUrl = imageUrl;
    }
}
