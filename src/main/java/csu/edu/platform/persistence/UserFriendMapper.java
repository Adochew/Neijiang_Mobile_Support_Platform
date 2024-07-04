package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.UserFriend;
import org.springframework.stereotype.Repository;

@Repository
public interface UserFriendMapper extends BaseMapper<UserFriend> {
}
