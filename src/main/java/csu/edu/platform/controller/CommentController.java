package csu.edu.platform.controller;

import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProduct;
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

    @GetMapping("/merchant_comments/{commentId}")
    public ResponseEntity<Object> getMerchantComments(@PathVariable Integer commentId) {
        return ResponseUtil.success(commentService.getMerchantCommentByMCommentId(commentId));
    }

    @GetMapping("/merchant_comments/merchants/{merchantId}")
    public ResponseEntity<Object> getMerchantCommentsByMerchantId(@PathVariable Integer merchantId) {
        return ResponseUtil.success(commentService.getMerchantCommentListByMerchantId(merchantId));
    }

    @GetMapping("/merchant_comments/users/{userId}")
    public ResponseEntity<Object> getMerchantCommentsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(commentService.getMerchantCommentListByUserId(userId));
    }

    @PostMapping("/merchant_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> addMerchantComment(@RequestBody MerchantComment merchantComment) {
        if (commentService.addMerchantComment(merchantComment)) {
            return ResponseUtil.success("Merchant comment added.");
        } else {
            return ResponseUtil.success("Merchant comment not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("/merchant_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> updateMerchantComment(@RequestBody MerchantComment merchantComment) {
        if (commentService.updateMerchantComment(merchantComment)) {
            return ResponseUtil.success("Merchant comment updated.");
        } else {
            return ResponseUtil.success("Merchant comment not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/merchant_comments/{commentId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteMerchantComment(@PathVariable Integer commentId) {
        if (commentService.deleteMerchantComment(commentId)){
            return ResponseUtil.success("Merchant comment deleted.");
        } else {
            return ResponseUtil.success("Merchant comment not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/product_comments/{commentId}")
    public ResponseEntity<Object> getMerchantProductComments(@PathVariable Integer commentId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentByMCommentId(commentId));
    }

    @GetMapping("/product_comments/products/{productId}")
    public ResponseEntity<Object> getMerchantProductCommentsByProductId(@PathVariable Integer productId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentListByProductId(productId));
    }

    @GetMapping("/product_comments/users/{userId}")
    public ResponseEntity<Object> getMerchantProductCommentsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(commentService.getMerchantProductCommentListByUserId(userId));
    }

    @PostMapping("/product_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> addMerchantProductComment(@RequestBody MerchantProductComment merchantProductComment) {
        if (commentService.addMerchantProductComment(merchantProductComment)){
            return ResponseUtil.success("Merchant product comment added.");
        } else {
            return ResponseUtil.error("Merchant product comment not added.", HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("/product_comments")
    @RoleRequired({3})
    public ResponseEntity<Object> updateMerchantProductComment(@RequestBody MerchantProductComment merchantProductComment) {
        if (commentService.updateMerchantProductComment(merchantProductComment)) {
            return ResponseUtil.success("Merchant product comment updated.");
        } else {
            return ResponseUtil.success("Merchant product comment not updated.", HttpStatus.BAD_REQUEST);
        }
    }

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
