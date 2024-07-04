package csu.edu.platform.persistence;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import csu.edu.platform.entity.MerchantProduct;
import org.springframework.stereotype.Repository;

@Repository
public interface MerchantProductMapper extends BaseMapper<MerchantProduct> {
}
