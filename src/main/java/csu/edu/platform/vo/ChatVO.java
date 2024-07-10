package csu.edu.platform.vo;

import csu.edu.platform.entity.GroupMember;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class ChatVO {
    private GroupMember groupMember;
    private String name;
    private String imageUrl;

    public ChatVO(GroupMember groupMember, String name, String imageUrl) {
        this.groupMember = groupMember;
        this.name = name;
        this.imageUrl = imageUrl;
    }
}
