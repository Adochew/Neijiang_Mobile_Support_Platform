package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.UserInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInfoMapper extends BaseMapper<UserInfo> {
}
