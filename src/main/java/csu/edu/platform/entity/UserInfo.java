package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@TableName("user_info")
public class UserInfo {
    @TableId(value = "user_id", type = IdType.AUTO)
    private Integer userId;
    private Integer accountId;
    private String name;
    private String email;
    private String phone;
    private LocalDateTime createdAt;

    public UserInfo(Integer accountId, String name){
        this.accountId = accountId;
        this.name = name;
    }
}
