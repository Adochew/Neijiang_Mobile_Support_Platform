package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.GroupMember;
import org.springframework.stereotype.Repository;

@Repository
public interface GroupMemberMapper extends BaseMapper<GroupMember> {
}
