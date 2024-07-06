package csu.edu.platform.controller;

import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantPromotion;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/merchants")
public class MerchantController {
    @Autowired
    private MerchantService merchantService;

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
            return ResponseUtil.error("Merchant category not added.");
        }
    }

    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateMerchantCategory(@RequestBody MerchantCategory merchantCategory){
        if (merchantService.updateMerchantCategory(merchantCategory)) {
            return ResponseUtil.success("Merchant category updated.");
        } else {
            return ResponseUtil.error("Merchant category not updated.");
        }
    }

    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteMerchantCategory(@PathVariable Integer categoryId){
        if (merchantService.deleteMerchantCategory(categoryId)) {
            return ResponseUtil.success("Merchant category deleted.");
        } else {
            return ResponseUtil.error("Merchant category not deleted.");
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
    public ResponseEntity<Object> searchMerchants(@RequestBody String keyword){
        return ResponseUtil.success(merchantService.getMerchantVOListByKeyword(keyword));
    }

    @PostMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> addMerchant(@RequestBody MerchantVO merchantVO){
        if (merchantService.addMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant added.");
        } else {
            return ResponseUtil.error("Merchant not added.");
        }
    }

    @PutMapping("")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchant(@RequestBody MerchantVO merchantVO){
        if (merchantService.updateMerchantInfo(merchantVO)){
            return ResponseUtil.success("Merchant updated.");
        } else {
            return ResponseUtil.error("Merchant not updated.");
        }
    }

    @DeleteMapping({"/{merchantId}"})
    @RoleRequired({1, 2})
    public ResponseEntity<Object> deleteMerchant(@PathVariable Integer merchantId){
        if (merchantService.deleteMerchantInfo(merchantId)){
            return ResponseUtil.success("Merchant deleted.");
        } else {
            return ResponseUtil.error("Merchant not deleted.");
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
            return ResponseUtil.error("Merchant promotion not added.");
        }
    }

    @PutMapping("/promotions")
    @RoleRequired({2})
    public ResponseEntity<Object> updateMerchantPromotions(@RequestBody MerchantPromotion merchantPromotion){
        if (merchantService.updateMerchantPromotion(merchantPromotion)){
            return ResponseUtil.success("Merchant promotion updated.");
        } else {
            return ResponseUtil.error("Merchant promotion not updated.");
        }
    }

    @DeleteMapping("/promotions/{promotionId}")
    @RoleRequired({2})
    public ResponseEntity<Object> deleteMerchantPromotions(@PathVariable Integer promotionId){
        if (merchantService.deleteMerchantPromotion(promotionId)){
            return ResponseUtil.success("Merchant promotion deleted.");
        } else {
            return ResponseUtil.error("Merchant promotion not deleted.");
        }
    }
}
