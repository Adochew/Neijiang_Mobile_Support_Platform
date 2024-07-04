package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("group_history")
public class GroupHistory {
    @TableId(value = "history_id", type = IdType.AUTO)
    private Integer historyId;
    private Integer groupId;
    private String action;
    private String details;
    private LocalDateTime createdAt;
}
