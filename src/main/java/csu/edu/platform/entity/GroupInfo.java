package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("group_info")
public class GroupInfo {
    @TableId(value = "group_id", type = IdType.AUTO)
    private Integer groupId;
    private Integer ownerId;
    private String groupName;
    private String description;
    private String imageUrl;
    private LocalDateTime createdAt;
}
