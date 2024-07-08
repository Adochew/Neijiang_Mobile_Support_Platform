package csu.edu.platform.controller;

import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.service.CommentService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/comments")
public class CommentController {

    @Autowired
    private CommentService commentService;

    /**
     * 根据评论ID获取商户评论
     * @param commentId 商户评论ID
     * @return 商户评论信息
     */
    @GetMapping("/merchant_comments/{commentId}")
    public ResponseEntity<Object> getMerchantComments(@PathVariable Integer commentId) {
        return ResponseUtil.success(commentService.getMerchantCommentByMCommentId(commentId));
    }

    /**
     * 根据商户ID获取商户评论列表
     * @param merchantId 商户ID
     * @return 商户评论列表
     */
    @GetMapping("/merchant_comments/merchants/{merchantId}")
    public ResponseEntity<Object> getMerchantCommentsByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(commentService.getMerchantCommentListByMerchantId(merchantId));
    }

    /**
     * 根据用户ID获取商户评论列表
     * @param userId 用户ID
     * @return 用户评论列表
     */
    @GetMapping("/merchant_comments/users/{userId}")
    public ResponseEntity<Object> getMerchantCommentsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(commentService.getMerchantCommentListByUserId(userId));
    }

    /**
     * 添加商户评论
     * @param merchantComment 商户评论实体
     * @return 添加结果
     */
    @PostMapping("/merchant_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> addMerchantComment(@RequestBody MerchantComment merchantComment) {
        if (commentService.addMerchantComment(merchantComment)) {
            return ResponseUtil.success("Merchant comment added.");
        } else {
            return ResponseUtil.success("Merchant comment not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商户评论
     * @param merchantComment 商户评论实体
     * @return 更新结果
     */
    @PutMapping("/merchant_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> updateMerchantComment(@RequestBody MerchantComment merchantComment) {
        if (commentService.updateMerchantComment(merchantComment)) {
            return ResponseUtil.success("Merchant comment updated.");
        } else {
            return ResponseUtil.success("Merchant comment not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除商户评论
     * @param commentId 商户评论ID
     * @return 删除结果
     */
    @DeleteMapping("/merchant_comments/{commentId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteMerchantComment(@PathVariable Integer commentId) {
        if (commentService.deleteMerchantComment(commentId)) {
            return ResponseUtil.success("Merchant comment deleted.");
        } else {
            return ResponseUtil.success("Merchant comment not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据评论ID获取商品评论
     * @param commentId 商品评论ID
     * @return 商品评论信息
     */
    @GetMapping("/product_comments/{commentId}")
    public ResponseEntity<Object> getMerchantProductComments(@PathVariable Integer commentId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentByMCommentId(commentId));
    }

    /**
     * 根据商品ID获取商品评论列表
     * @param productId 商品ID
     * @return 商品评论列表
     */
    @GetMapping("/product_comments/products/{productId}")
    public ResponseEntity<Object> getMerchantProductCommentsByProductId(@PathVariable Integer productId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentListByProductId(productId));
    }

    /**
     * 根据用户ID获取商品评论列表
     * @param userId 用户ID
     * @return 用户商品评论列表
     */
    @GetMapping("/product_comments/users/{userId}")
    public ResponseEntity<Object> getMerchantProductCommentsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentListByUserId(userId));
    }

    /**
     * 添加商品评论
     * @param merchantProductComment 商品评论实体
     * @return 添加结果
     */
    @PostMapping("/product_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> addMerchantProductComment(@RequestBody MerchantProductComment merchantProductComment) {
        if (commentService.addMerchantProductComment(merchantProductComment)){
            return ResponseUtil.success("Merchant product comment added.");
        } else {
            return ResponseUtil.error("Merchant product comment not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新商品评论
     * @param merchantProductComment 商品评论实体
     * @return 更新结果
     */
    @PutMapping("/product_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> updateMerchantProductComment(@RequestBody MerchantProductComment merchantProductComment) {
        if (commentService.updateMerchantProductComment(merchantProductComment)) {
            return ResponseUtil.success("Merchant product comment updated.");
        } else {
            return ResponseUtil.success("Merchant product comment not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除商品评论
     * @param commentId 商品评论ID
     * @return 删除结果
     */
    @DeleteMapping("/product_comments/{commentId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteMerchantProductComment(@PathVariable Integer commentId) {
        if (commentService.deleteMerchantProductComment(commentId)){
            return ResponseUtil.success("Merchant product comment deleted.");
        } else {
            return ResponseUtil.success("Merchant product comment not deleted.", HttpStatus.BAD_REQUEST);
        }
    }
}
