package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.UserFavoriteProduct;
import org.springframework.stereotype.Repository;

@Repository
public interface UserFavoriteProductMapper extends BaseMapper<UserFavoriteProduct> {
}
