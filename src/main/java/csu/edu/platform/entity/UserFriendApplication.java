package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("user_friend_application")
public class UserFriendApplication {
    private Integer userId;
    private Integer friendId;
    private Integer categoryId;
}
