package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantInfo;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantPromotion;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.service.OssService;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@RestController
@RequestMapping("/merchants")
public class MerchantController {

    @Autowired
    private MerchantService merchantService;
    @Autowired
    private OssService ossService;

    /**
     * 获取所有商户类别
     * @return 所有商户类别的列表
     */
    @GetMapping("/categories")
    public ResponseEntity<Object> getAllCategories() {
        return ResponseUtil.success(merchantService.getMerchantCategoryList());
    }

    /**
     * 添加商户类别
     * @param merchantCategory 商户类别实体
     * @return 添加结果
     */
    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addMerchantCategory(@RequestBody MerchantCategory merchantCategory) {
        if (merchantService.addMerchantCategory(merchantCategory)) {
            return ResponseUtil.success("Merchant category added.");
        } else {
            return ResponseUtil.error("Merchant category not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商户类别
     * @param merchantCategory 商户类别实体
     * @return 更新结果
     */
    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantCategory(@RequestBody MerchantCategory merchantCategory){
        if (merchantService.updateMerchantCategory(merchantCategory)) {
            return ResponseUtil.success("Merchant category updated.");
        } else {
            return ResponseUtil.error("Merchant category not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除商户类别
     * @param categoryId 商户类别ID
     * @return 删除结果
     */
    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantCategory(@PathVariable Integer categoryId){
        if (merchantService.deleteMerchantCategory(categoryId)) {
            return ResponseUtil.success("Merchant category deleted.");
        } else {
            return ResponseUtil.error("Merchant category not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据商户ID获取商户信息
     * @param merchantId 商户ID
     * @return 商户信息
     */
    @GetMapping("/{merchantId}")
    public ResponseEntity<Object> getMerchantByMerchantId(@PathVariable Integer merchantId){
        return ResponseUtil.success(merchantService.getMerchantVOByMerchantId(merchantId));
    }

    /**
     * 获取所有商户
     * @return 所有商户的列表
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllMerchants(){
        return ResponseUtil.success(merchantService.getMerchantVOList());
    }

    /**
     * 根据商户类别ID获取商户信息
     * @param categoryId 商户类别ID
     * @return 商户信息
     */
    @GetMapping("/categories/{categoryId}")
    public ResponseEntity<Object> getMerchantsByCategoryId(@PathVariable Integer categoryId){
        return ResponseUtil.success(merchantService.getMerchantVOListByCategoryId(categoryId));
    }

    /**
     * 根据关键字搜索商户
     * @param request 包含搜索关键字的请求体
     * @return 符合关键字的商户列表
     */
    @PostMapping("/search")
    public ResponseEntity<Object> searchMerchants(@RequestBody String request){
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(merchantService.getMerchantVOListByKeyword(keyword));
    }

    /**
     * 添加商户信息
     * @param merchantVO 商户信息实体
     * @return 添加结果
     */
    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchant(@RequestBody MerchantVO merchantVO){
        if (merchantService.addMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant added.");
        } else {
            return ResponseUtil.error("Merchant not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商户信息
     * @param merchantVO 商户信息实体
     * @return 更新结果
     */
    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchant(@RequestBody MerchantVO merchantVO){
        if (merchantService.updateMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant updated.");
        } else {
            return ResponseUtil.error("Merchant not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商户图片
     * @param merchantId 商户ID
     * @param image 商户图片
     * @return 更新结果
     */
    @PostMapping("/images/{merchantId}")
    public ResponseEntity<Object> addMerchantImage(@PathVariable Integer merchantId,
                                                   @RequestParam MultipartFile image) {
        String fileName = "merchant/" + UUID.randomUUID();
        String url = ossService.updateFile(MerchantService.class, merchantId, image, fileName);
        return ResponseUtil.success(url);
    }

    /**
     * 删除商户信息
     * @param merchantId 商户ID
     * @return 删除结果
     */
    @DeleteMapping({"/{merchantId}"})
    @RoleRequired({1, 2})
    public ResponseEntity<Object> deleteMerchant(@PathVariable Integer merchantId){
        MerchantVO merchantVO = merchantService.getMerchantVOByMerchantId(merchantId);
        if (merchantVO != null){
            ossService.deleteFile(merchantVO.getImageUrl());
        }
        if (merchantService.deleteMerchantInfo(merchantId)){
            return ResponseUtil.success("Merchant deleted.");
        } else {
            return ResponseUtil.error("Merchant not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据商户ID获取商户促销活动
     * @param merchantId 商户ID
     * @return 商户促销活动列表
     */
    @GetMapping("/promotions/{merchantId}")
    public ResponseEntity<Object> getMerchantPromotions(@PathVariable Integer merchantId){
        return ResponseUtil.success(merchantService.getMerchantPromotionListByMerchantId(merchantId));
    }

    /**
     * 添加商户促销活动
     * @param merchantPromotion 商户促销活动实体
     * @return 添加结果
     */
    @PostMapping("/promotions")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchantPromotions(@RequestBody MerchantPromotion merchantPromotion){
        if (merchantService.addMerchantPromotion(merchantPromotion)){
            return ResponseUtil.success("Merchant promotion added.");
        } else {
            return ResponseUtil.error("Merchant promotion not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商户促销活动
     * @param merchantPromotion 商户促销活动实体
     * @return 更新结果
     */
    @PutMapping("/promotions")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantPromotions(@RequestBody MerchantPromotion merchantPromotion){
        if (merchantService.updateMerchantPromotion(merchantPromotion)){
            return ResponseUtil.success("Merchant promotion updated.");
        } else {
            return ResponseUtil.error("Merchant promotion not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除商户促销活动
     * @param promotionId 促销活动ID
     * @return 删除结果
     */
    @DeleteMapping("/promotions/{promotionId}")
    @RoleRequired({2})
    public ResponseEntity<Object> deleteMerchantPromotions(@PathVariable Integer promotionId){
        if (merchantService.deleteMerchantPromotion(promotionId)){
            return ResponseUtil.success("Merchant promotion deleted.");
        } else {
            return ResponseUtil.error("Merchant promotion not deleted.", HttpStatus.BAD_REQUEST);
        }
    }
}
