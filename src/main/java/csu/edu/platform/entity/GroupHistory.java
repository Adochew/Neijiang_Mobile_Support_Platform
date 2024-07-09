package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@TableName("group_history")
public class GroupHistory {
    @TableId(value = "history_id", type = IdType.AUTO)
    private Integer historyId;
    private Integer accountId;
    private Integer groupId;
    private String action;
    private String details;
    private LocalDateTime createdAt;

    public GroupHistory(Integer accountId, Integer groupId, String details) {
        this.accountId = accountId;
        this.groupId = groupId;
        this.action = "common";
        this.details = details;
    }

    public GroupHistory(Integer accountId, Integer groupId, String action, String details) {
        this.accountId = accountId;
        this.groupId = groupId;
        this.action = action;
        this.details = details;
    }
}
