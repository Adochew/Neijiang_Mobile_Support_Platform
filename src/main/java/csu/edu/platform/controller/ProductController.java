package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.entity.UserInfo;
import csu.edu.platform.service.OssService;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.service.UserService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/products")
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OssService ossService;

    /**
     * 获取所有商品类别
     * @return 所有商品类别的列表
     */
    @GetMapping("/categories")
    public ResponseEntity<Object> getAllMerchantProductCategories() {
        return ResponseUtil.success(productService.getMerchantProductCategoryList());
    }

    /**
     * 获取制定商家所有商品类别
     * @param merchantId 商家Id
     * @return 所有商品类别的列表
     */
    @GetMapping("/categories/merchants/{merchantId}")
    public ResponseEntity<Object> getAllMerchantProductCategoriesByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(productService.getMerchantProductCategoryListByMerchantId(merchantId));
    }

    /**
     * 添加商品类别
     * @param productCategory 商品类别实体
     * @return 添加结果
     */
    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addMerchantProductCategory(@RequestBody MerchantProductCategory productCategory) {
        if (productService.addMerchantProductCategory(productCategory)) {
            return ResponseUtil.success("Product category added.");
        } else {
            return ResponseUtil.error("Product category not added.");
        }
    }

    /**
     * 更新商品类别
     * @param productCategory 商品类别实体
     * @return 更新结果
     */
    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantProductCategory(@RequestBody MerchantProductCategory productCategory) {
        if (productService.updateMerchantProductCategory(productCategory)) {
            return ResponseUtil.success("Product category updated.");
        } else {
            return ResponseUtil.error("Product category not updated.");
        }
    }

    /**
     * 删除商品类别
     * @param categoryId 商品类别ID
     * @return 删除结果
     */
    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantProductCategory(@PathVariable Integer categoryId) {
        if (productService.deleteMerchantProductCategory(categoryId)) {
            return ResponseUtil.success("Product category deleted.");
        } else {
            return ResponseUtil.error("Product category not deleted.");
        }
    }

    /**
     * 根据商品ID获取商品信息
     * @param productId 商品ID
     * @return 商品信息
     */
    @GetMapping("/{productId}")
    public ResponseEntity<Object> getMerchantProductsByProductId(@PathVariable Integer productId) {
        return ResponseUtil.success(productService.getMerchantProductVOByproductId(productId));
    }

    /**
     * 根据商户ID获取商品信息
     * @param merchantId 商户ID
     * @return 商品信息
     */
    @GetMapping("/merchants/merchantId/{merchantId}")
    public ResponseEntity<Object> getMerchantProductsByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantId(merchantId));
    }

    /**
     * 根据商户ID获取商品信息
     * @param accountId 商户ID
     * @return 商品信息
     */
    @GetMapping("/merchants/accountId/{accountId}")
    public ResponseEntity<Object> getMerchantProductsByAccountId(@PathVariable Integer accountId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByAccountId(accountId));
    }


    /**
     * 根据商户ID和商品类别ID获取商品信息
     * @param merchantId 商户ID
     * @param categoryId 商品类别ID
     * @return 商品信息
     */
    @GetMapping("/merchants/{merchantId}/categories/{categoryId}")
    public ResponseEntity<Object> getMerchantProductsByMerchantIdAndCategoryId(@PathVariable Integer merchantId,
                                                                               @PathVariable Integer categoryId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantIdAndCategoryId(merchantId, categoryId));
    }

    /**
     * 根据商户ID和关键字搜索商品
     * @param merchantId 商户ID
     * @param request 包含搜索关键字的请求体
     * @return 符合关键字的商品列表
     */
    @PostMapping("/merchants/{merchantId}/search")
    public ResponseEntity<Object> getMerchantProductsByMerchantIdAndKeyword(@PathVariable Integer merchantId,
                                                                            @RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantIdAndKeyword(merchantId, keyword));
    }

    /**
     * 添加商品
     * @param productVO 商品信息实体
     * @return 添加结果
     */
    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchantProduct(@RequestBody ProductVO productVO) {
        if (productService.addMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product added.");
        } else {
            return ResponseUtil.error("Merchant product not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商品信息
     * @param productVO 商品信息实体
     * @return 更新结果
     */
    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantProduct(@RequestBody ProductVO productVO) {
        if (productService.updateMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product updated.");
        } else {
            return ResponseUtil.error("Merchant product not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商品图片
     * @param productId 商品ID
     * @param file 商品图片
     * @return 更新结果
     */
    @PostMapping("/images/{productId}")
    public ResponseEntity<Object> addMerchantProductImage(@PathVariable Integer productId,
                                                          @RequestParam MultipartFile file) {
        String fileName = "product/" + UUID.randomUUID();
        String url = ossService.updateFile(ProductService.class, productId, file, fileName);
        return ResponseUtil.success(url);
    }

    /**
     * 删除商品
     * @param productId 商品ID
     * @return 删除结果
     */
    @DeleteMapping("/{productId}")
    @RoleRequired({2})
    public ResponseEntity<Object> deleteMerchantProduct(@PathVariable Integer productId) {
        ProductVO merchantProductVO = productService.getMerchantProductVOByproductId(productId);
        if (merchantProductVO != null){
            ossService.deleteFile(merchantProductVO.getImageUrl());
        }
        if (productService.deleteMerchantProduct(productId)){
            return ResponseUtil.success("Merchant product deleted.");
        } else {
            return ResponseUtil.error("Merchant product not deleted.", HttpStatus.BAD_REQUEST);
        }
    }
}
