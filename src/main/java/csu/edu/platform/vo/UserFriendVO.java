package csu.edu.platform.vo;

import csu.edu.platform.entity.UserFriend;
import csu.edu.platform.entity.UserFriendCategory;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserFriendVO {
    private Integer userId;
    private Integer friendId;
    private Integer categoryId;
    private String categoryName;

    public UserFriendVO(UserFriend userFriend, UserFriendCategory userFriendCategory) {
        this.userId = userFriend.getUserId();
        this.friendId = userFriend.getFriendId();
        this.categoryId = userFriendCategory.getCategoryId();
        this.categoryName = userFriendCategory.getCategoryName();
    }

}
