package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.MerchantInfo;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.persistence.*;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service("productService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    private MerchantInfoMapper merchantInfoMapper;
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

    @Override
    public List<MerchantProductCategory> getMerchantProductCategoryListByMerchantId(Integer merchantId) {
        QueryWrapper<MerchantProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("merchant_id", merchantId);
        List<MerchantProduct> merchantProducts = merchantProductMapper.selectList(queryWrapper);

        List<Integer> distinctCategoryIdList = merchantProducts.stream()
                .map(MerchantProduct::getCategoryId).distinct().collect(Collectors.toList());

        List<MerchantProductCategory> merchantProductCategoryList = new ArrayList<>();
        for (Integer categoryId : distinctCategoryIdList) {
            merchantProductCategoryList.add(merchantProductCategoryMapper.selectById(categoryId));
        }
        return merchantProductCategoryList;
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
            MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(merchantProduct.getCategoryId());
            ProductVO productVO = new ProductVO(merchantProduct, merchantProductCategory);
            productVOList.add(productVO);
        }
        return productVOList;
    }
    public List<ProductVO> getMerchantProductVOListByAccountId(Integer accountId){
        QueryWrapper<MerchantInfo> queryWrapper1 = new QueryWrapper<MerchantInfo>();
        queryWrapper1.eq("owner_id", accountId);
        MerchantInfo merchantInfo = merchantInfoMapper.selectOne(queryWrapper1);
        QueryWrapper<MerchantProduct> queryWrapper2 = new QueryWrapper<MerchantProduct>();
        queryWrapper2.eq("merchant_id", merchantInfo.getMerchantId());
        List<MerchantProduct> merchantProductList = merchantProductMapper.selectList(queryWrapper2);
        List<ProductVO> productVOList = new ArrayList<ProductVO>();
        for (MerchantProduct merchantProduct : merchantProductList) {
            MerchantProductCategory merchantProductCategory = merchantProductCategoryMapper.selectById(merchantProduct.getCategoryId());
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
