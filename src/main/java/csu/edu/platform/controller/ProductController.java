package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {
    @Autowired private ProductService productService;

    @GetMapping("/categories")
    public ResponseEntity<Object> getAllMerchantProductCategories() {
        return ResponseUtil.success(productService.getMerchantProductCategoryList());
    }

    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addMerchantProductCategory(MerchantProductCategory productCategory) {
        return ResponseUtil.success(productService.addMerchantProductCategory(productCategory));
    }

    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantProductCategory(MerchantProductCategory productCategory) {
        return ResponseUtil.success(productService.updateMerchantProductCategory(productCategory));
    }

    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantProductCategory(@PathVariable Integer categoryId) {
        return ResponseUtil.success(productService.deleteMerchantProductCategory(categoryId));
    }

    @GetMapping("/{productId}")
    public ResponseEntity<Object> getMerchantProductsByProductId(@PathVariable Integer productId) {
        return ResponseUtil.success(productService.getMerchantProductVOByproductId(productId));
    }

    @GetMapping("/merchants/{merchantId}")
    public ResponseEntity<Object> getMerchantProductsByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantId(merchantId));
    }

    @GetMapping("/merchants/{merchantId}/categorys/{categoryId}")
    public ResponseEntity<Object> getMerchantProductsByMerchantIdAndCategoryId(@PathVariable Integer merchantId,
                                                                               @PathVariable Integer categoryId) {
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantIdAndCategoryId(merchantId, categoryId));
    }

    @PostMapping("/merchants/{merchantId}/search")
    public ResponseEntity<Object> getMerchantProductsByMerchantIdAndKeyword(@PathVariable Integer merchantId,
                                                                            @RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(productService.getMerchantProductVOListByMerchantIdAndKeyword(merchantId, keyword));
    }

    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchantProduct(@RequestBody ProductVO productVO) {
        if (productService.addMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product added.");
        } else {
            return ResponseUtil.error("Merchant product not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantProduct(@RequestBody ProductVO productVO) {
        if (productService.updateMerchantProduct(productVO)){
            return ResponseUtil.success("Merchant product updated.");
        } else {
            return ResponseUtil.error("Merchant product not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/{productId}")
    @RoleRequired({2})
    public ResponseEntity<Object> deleteMerchantProduct(@PathVariable Integer productId) {
        if (productService.deleteMerchantProduct(productId)){
            return ResponseUtil.success("Merchant product deleted.");
        } else {
            return ResponseUtil.error("Merchant product not deleted.", HttpStatus.BAD_REQUEST);
        }
    }
}
