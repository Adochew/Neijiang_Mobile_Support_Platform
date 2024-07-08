package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.service.OssService;
import csu.edu.platform.service.ProductService;
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
     * 添加商品类别（需要角色ID为1的权限）
     * @param productCategory 商品类别实体
     * @return 添加结果
     */
    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addMerchantProductCategory(@RequestBody MerchantProductCategory productCategory) {
        return ResponseUtil.success(productService.addMerchantProductCategory(productCategory));
    }

    /**
     * 更新商品类别（需要角色ID为1的权限）
     * @param productCategory 商品类别实体
     * @return 更新结果
     */
    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantProductCategory(@RequestBody MerchantProductCategory productCategory) {
        return ResponseUtil.success(productService.updateMerchantProductCategory(productCategory));
    }

    /**
     * 删除商品类别（需要角色ID为1的权限）
     * @param categoryId 商品类别ID
     * @return 删除结果
     */
    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantProductCategory(@PathVariable Integer categoryId) {
        return ResponseUtil.success(productService.deleteMerchantProductCategory(categoryId));
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
    @GetMapping("/merchants/{merchantId}")
    public ResponseEntity<Object> getMerchantProductsByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantId(merchantId));
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
     * 添加商品（需要角色ID为2的权限）
     * @param productVO 商品信息实体
     * @param image 商品图片文件
     * @return 添加结果
     */
    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchantProduct(@RequestBody ProductVO productVO,
                                                     @RequestParam(required = false) MultipartFile image) {
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            productVO.setImageUrl(imageUrl);
        }
        if (productService.addMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product added.");
        } else {
            return ResponseUtil.error("Merchant product not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商品信息（需要角色ID为2的权限）
     * @param productVO 商品信息实体
     * @param image 商品图片文件
     * @return 更新结果
     */
    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantProduct(@RequestBody ProductVO productVO,
                                                        @RequestParam(required = false) MultipartFile image) {
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            productVO.setImageUrl(imageUrl);
        }
        if (productService.updateMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product updated.");
        } else {
            return ResponseUtil.error("Merchant product not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除商品（需要角色ID为2的权限）
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
