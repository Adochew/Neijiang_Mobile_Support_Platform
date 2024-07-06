package csu.edu.platform.service;

import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.vo.ProductVO;

import java.util.List;

public interface ProductService {
    List<MerchantProductCategory> getMerchantProductCategoryList();
    Boolean addMerchantProductCategory(MerchantProductCategory merchantProductCategory);
    Boolean updateMerchantProductCategory(MerchantProductCategory merchantProductCategory);
    Boolean deleteMerchantProductCategory(Integer categoryId);

    ProductVO getMerchantProductVOByproductId(Integer productId);
    List<ProductVO> getMerchantProductVOListByMerchantId(Integer merchantId);
    List<ProductVO> getMerchantProductVOListByMerchantIdAndCategoryId(Integer merchantId, Integer categoryId);
    List<ProductVO> getMerchantProductVOListByMerchantIdAndKeyword(Integer MerchantId, String keyword);
    Boolean addMerchantProduct(ProductVO productVO);
    Boolean updateMerchantProduct(ProductVO productVO);
    Boolean deleteMerchantProduct(Integer productId);
}
