package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.SystemArticle;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SystemArticleMapper extends BaseMapper<SystemArticle> {
}
