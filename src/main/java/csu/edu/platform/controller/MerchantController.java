package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantPromotion;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.service.OssService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/merchants")
public class MerchantController {
    @Autowired
    private MerchantService merchantService;
    @Autowired
    private OssService ossService;

    @GetMapping("/categories")
    public ResponseEntity<Object> getAllCategories() {
        return ResponseUtil.success(merchantService.getMerchantCategoryList());
    }

    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addMerchantCategory(@RequestBody MerchantCategory merchantCategory) {
        if (merchantService.addMerchantCategory(merchantCategory)) {
            return ResponseUtil.success("Merchant category added.");
        } else {
            return ResponseUtil.error("Merchant category not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantCategory(@RequestBody MerchantCategory merchantCategory){
        if (merchantService.updateMerchantCategory(merchantCategory)) {
            return ResponseUtil.success("Merchant category updated.");
        } else {
            return ResponseUtil.error("Merchant category not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantCategory(@PathVariable Integer categoryId){
        if (merchantService.deleteMerchantCategory(categoryId)) {
            return ResponseUtil.success("Merchant category deleted.");
        } else {
            return ResponseUtil.error("Merchant category not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/{merchantId}")
    public ResponseEntity<Object> getMerchantByMerchantId(@PathVariable Integer merchantId){
        return ResponseUtil.success(merchantService.getMerchantVOByMerchantId(merchantId));
    }

    @GetMapping("")
    @RoleRequired({1})
    public ResponseEntity<Object> getAllMerchants(){
        return ResponseUtil.success(merchantService.getMerchantVOList());
    }

    @GetMapping("/categories/{categoryId}")
    public ResponseEntity<Object> getMerchantsByCategoryId(@PathVariable Integer categoryId){
        return ResponseUtil.success(merchantService.getMerchantVOListByCategoryId(categoryId));
    }

    @PostMapping("/search")
    public ResponseEntity<Object> searchMerchants(@RequestBody String request){
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(merchantService.getMerchantVOListByKeyword(keyword));
    }

    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchant(@RequestBody MerchantVO merchantVO,
                                              @RequestParam(required = false) MultipartFile image){
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            merchantVO.setImageUrl(imageUrl);
        }
        if (merchantService.addMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant added.");
        } else {
            return ResponseUtil.error("Merchant not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchant(@RequestBody MerchantVO merchantVO,
                                                 @RequestParam(required = false) MultipartFile image){
        if (image != null){
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            merchantVO.setImageUrl(imageUrl);
        }
        if (merchantService.updateMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant updated.");
        } else {
            return ResponseUtil.error("Merchant not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping({"/{merchantId}"})
    @RoleRequired({1, 2})
    public ResponseEntity<Object> deleteMerchant(@PathVariable Integer merchantId){
        MerchantVO merchantVO = merchantService.getMerchantVOByMerchantId(merchantId);
        ossService.deleteFile(merchantVO.getImageUrl());
        if (merchantService.deleteMerchantInfo(merchantId)){
            return ResponseUtil.success("Merchant deleted.");
        } else {
            return ResponseUtil.error("Merchant not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/promotions/{merchantId}")
    public ResponseEntity<Object> getMerchantPromotions(@PathVariable Integer merchantId){
        return ResponseUtil.success(merchantService.getMerchantPromotionListByMerchantId(merchantId));
    }

    @PostMapping("/promotions")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchantPromotions(@RequestBody MerchantPromotion merchantPromotion){
        if (merchantService.addMerchantPromotion(merchantPromotion)){
            return ResponseUtil.success("Merchant promotion added.");
        } else {
            return ResponseUtil.error("Merchant promotion not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("/promotions")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantPromotions(@RequestBody MerchantPromotion merchantPromotion){
        if (merchantService.updateMerchantPromotion(merchantPromotion)){
            return ResponseUtil.success("Merchant promotion updated.");
        } else {
            return ResponseUtil.error("Merchant promotion not updated.", HttpStatus.BAD_REQUEST);
        }
    }

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
