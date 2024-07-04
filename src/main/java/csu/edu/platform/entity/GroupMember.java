package csu.edu.platform.entity;

import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("group_member")
public class GroupMember {
    private Integer groupId;
    private Integer userId;
    private String role;
    private LocalDateTime createdAt;
}
