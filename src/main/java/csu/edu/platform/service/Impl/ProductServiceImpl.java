package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.MerchantInfo;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.persistence.MerchantCommentMapper;
import csu.edu.platform.persistence.MerchantProductCategoryMapper;
import csu.edu.platform.persistence.MerchantProductCommentMapper;
import csu.edu.platform.persistence.MerchantProductMapper;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("productService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    private MerchantProductMapper merchantProductMapper;
    @Autowired
    private MerchantProductCategoryMapper merchantProductCategoryMapper;

    public String getImageUrl(Integer productId) {
        return merchantProductMapper.selectById(productId).getImageUrl();
    }
    public Boolean setImageUrl(Integer productId, String imageUrl) {
        MerchantProduct merchantProduct = merchantProductMapper.selectById(productId);
        merchantProduct.setImageUrl(imageUrl);
        return merchantProductMapper.updateById(merchantProduct) != 0;
    }
    public List<MerchantProductCategory> getMerchantProductCategoryList() {
        return merchantProductCategoryMapper.selectList(null);
    }
    public Boolean addMerchantProductCategory(MerchantProductCategory merchantProductCategory) {
        return merchantProductCategoryMapper.insert(merchantProductCategory) != 0;
    }
    public Boolean updateMerchantProductCategory(MerchantProductCategory merchantProductCategory) {
        return merchantProductCategoryMapper.updateById(merchantProductCategory) != 0;
    }
    public Boolean deleteMerchantProductCategory(Integer categoryId) {
        return merchantProductCategoryMapper.deleteById(categoryId) != 0;
    }

    public ProductVO getMerchantProductVOByproductId(Integer productId) {
        MerchantProduct merchantProduct = merchantProductMapper.selectById(productId);
        MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(merchantProduct.getCategoryId());
        return new ProductVO(merchantProduct, merchantProductCategory);
    }
    public List<ProductVO> getMerchantProductVOListByMerchantId(Integer merchantId) {
        QueryWrapper<MerchantProduct> queryWrapper = new QueryWrapper<MerchantProduct>();
        queryWrapper.eq("merchant_id", merchantId);
        List<MerchantProduct> merchantProductList = merchantProductMapper.selectList(queryWrapper);
        List<ProductVO> productVOList = new ArrayList<ProductVO>();
        for (MerchantProduct merchantProduct : merchantProductList) {
            MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(merchantProduct.getProductId());
            ProductVO productVO = new ProductVO(merchantProduct, merchantProductCategory);
            productVOList.add(productVO);
        }
        return productVOList;
    }
    public List<ProductVO> getMerchantProductVOListByMerchantIdAndCategoryId(Integer merchantId, Integer categoryId) {
        MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(categoryId);
        QueryWrapper<MerchantProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("merchant_id", merchantId);
        queryWrapper.eq("category_id", categoryId);
        List<MerchantProduct> merchantProductList = merchantProductMapper.selectList(queryWrapper);
        List<ProductVO> productVOList = new ArrayList<>();
        for (MerchantProduct merchantProduct : merchantProductList) {
            ProductVO productVO = new ProductVO(merchantProduct, merchantProductCategory);
            productVOList.add(productVO);
        }
        return productVOList;
    }
    public List<ProductVO> getMerchantProductVOListByMerchantIdAndKeyword(Integer MerchantId, String keyword) {
        QueryWrapper<MerchantProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("merchant_id", MerchantId);
        queryWrapper.like("product_name", keyword);
        List<MerchantProduct> merchantProductList = merchantProductMapper.selectList(queryWrapper);
        List<ProductVO> productVOList = new ArrayList<>();
        for (MerchantProduct merchantProduct : merchantProductList) {
            MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(merchantProduct.getProductId());
            ProductVO productVO = new ProductVO(merchantProduct, merchantProductCategory);
            productVOList.add(productVO);
        }
        return productVOList;
    }
    public Boolean addMerchantProduct(ProductVO productVO) {
        return merchantProductMapper.insert(productVO.parseMerchantProduct()) != 0;
    }
    public Boolean updateMerchantProduct(ProductVO productVO) {
        return merchantProductMapper.updateById(productVO.parseMerchantProduct()) != 0;
    }
    public Boolean deleteMerchantProduct(Integer productId) {
        return merchantProductMapper.deleteById(productId) != 0;
    }
}
