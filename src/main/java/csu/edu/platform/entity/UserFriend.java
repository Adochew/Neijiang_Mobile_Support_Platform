package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("user_friend")
public class UserFriend {
    private Integer userId;
    private Integer friendId;
}
