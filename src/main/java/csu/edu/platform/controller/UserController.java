package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.*;
import csu.edu.platform.service.OssService;
import csu.edu.platform.service.UserService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private OssService ossService;

    /**
     * 根据用户ID获取用户信息
     * @param userId 用户ID
     * @return 用户信息
     */
    @GetMapping("/{userId}")
    public ResponseEntity<Object> getUserInfoByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserInfoByUserId(userId));
    }

    /**
     * 根据账户ID获取用户信息
     * @param accountId 账户ID
     * @return 用户信息
     */
    @GetMapping("/accounts/{accountId}")
    public ResponseEntity<Object> getUserInfoByAccountId(@PathVariable Integer accountId) {
        return ResponseUtil.success(userService.getUserInfoByAccountId(accountId));
    }

    /**
     * 获取所有用户信息
     * @return 所有用户信息列表
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllUserInfo() {
        return ResponseUtil.success(userService.getUserInfoList());
    }

    /**
     * 根据关键字搜索用户信息
     * @param request 包含搜索关键字的请求体
     * @return 符合关键字的用户信息列表
     */
    @PostMapping("/search")
    public ResponseEntity<Object> searchUserInfo(@RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(userService.getUserInfoListByKeyword(keyword));
    }

    /**
     * 添加用户信息
     * @param userInfo 用户信息实体
     * @param image 用户头像文件
     * @return 添加结果
     */
    @PostMapping("")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserInfo(@RequestBody UserInfo userInfo,
                                              @RequestParam(required = false) MultipartFile image) {
        if (image != null) {
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            userInfo.setImageUrl(imageUrl);
        }
        if (userService.addUserInfo(userInfo)){
            return ResponseUtil.success("UserInfo added.");
        } else {
            return ResponseUtil.error("UserInfo not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新用户信息
     * @param userInfo 用户信息实体
     * @param image 用户头像文件
     * @return 更新结果
     */
    @PutMapping("")
    @RoleRequired({3})
    public ResponseEntity<Object> updateUserInfo(@RequestBody UserInfo userInfo,
                                                 @RequestParam(required = false) MultipartFile image) {
        if (image != null) {
            String imageUrl = ossService.uploadFile(image, UUID.randomUUID().toString());
            userInfo.setImageUrl(imageUrl);
        }
        if (userService.updateUserInfo(userInfo)){
            return ResponseUtil.success("UserInfo updated.");
        } else {
            return ResponseUtil.error("UserInfo not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除用户信息
     * @param userId 用户ID
     * @return 删除结果
     */
    @DeleteMapping("{userId}")
    @RoleRequired({1,3})
    public ResponseEntity<Object> deleteUserInfo(@PathVariable Integer userId) {
        UserInfo userInfo = userService.getUserInfoByUserId(userId);
        ossService.deleteFile(userInfo.getImageUrl());
        if (userService.deleteUserInfo(userId)){
            return ResponseUtil.success("UserInfo deleted.");
        } else {
            return ResponseUtil.error("UserInfo not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据用户ID获取好友类别
     * @param userId 用户ID
     * @return 好友类别列表
     */
    @GetMapping("/friends/categories/{userId}")
    @RoleRequired({3})
    public ResponseEntity<Object> getUserFriendCategoriesByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserFriendCategoryListByUserId(userId));
    }

    /**
     * 添加好友类别
     * @param userFriendCategory 好友类别实体
     * @return 添加结果
     */
    @PostMapping("/friends/categories")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserFriendCategory(@RequestBody UserFriendCategory userFriendCategory) {
        if (userService.addUserFriendCategory(userFriendCategory)){
            return ResponseUtil.success("UserFriendCategory added.");
        } else {
            return ResponseUtil.error("UserFriendCategory not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新好友类别
     * @param userFriendCategory 好友类别实体
     * @return 更新结果
     */
    @PutMapping("/friends/categories")
    @RoleRequired({3})
    public ResponseEntity<Object> updateUserFriendCategory(@RequestBody UserFriendCategory userFriendCategory) {
        if (userService.updateUserFriendCategory(userFriendCategory)){
            return ResponseUtil.success("UserFriendCategory updated.");
        } else {
            return ResponseUtil.error("UserFriendCategory not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除好友类别
     * @param categoryId 好友类别ID
     * @return 删除结果
     */
    @DeleteMapping("/friends/categories/{categoryId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteUserFriendCategory(@PathVariable Integer categoryId) {
        if (userService.deleteUserFriendCategory(categoryId)){
            return ResponseUtil.success("UserFriendCategory deleted.");
        } else {
            return ResponseUtil.error("UserFriendCategory not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 根据用户ID获取好友列表
     * @param userId 用户ID
     * @return 好友列表
     */
    @GetMapping("/friends/{userId}")
    @RoleRequired({1,3})
    public ResponseEntity<Object> getUserFriendsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserFriendVOListByUserId(userId));
    }

    /**
     * 根据用户ID和好友类别ID获取好友列表
     * @param userId 用户ID
     * @param categoryId 好友类别ID
     * @return 好友列表
     */
    @GetMapping("/friends/{userId}/categories/{categoryId}")
    @RoleRequired({3})
    public ResponseEntity<Object> getUserFriendsByUserIdAndCategoryId(@PathVariable Integer userId,
                                                                      @PathVariable Integer categoryId){
        return ResponseUtil.success(userService.getUserFriendVOListByUserIdAndCategoryId(userId, categoryId));
    }

    /**
     * 根据用户ID获取好友申请
     * @param userId 用户ID
     * @return 好友申请列表
     */
    @GetMapping("/friends/applications/{userId}")
    @RoleRequired({3})
    public ResponseEntity<Object> getUserFriendApplicationsByUserId(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserFriendApplicationListByUserId(userId));
    }

    /**
     * 添加好友申请
     * @param userFriendApplication 好友申请实体
     * @return 添加结果
     */
    @PostMapping("/friends/applications")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserFriendApplication(@RequestBody UserFriendApplication userFriendApplication) {
        if (userService.addUserFriendApplication(userFriendApplication)){
            return ResponseUtil.success("UserFriendApplication added.");
        } else {
            return ResponseUtil.error("UserFriendApplication not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除好友申请
     * @param userFriendApplication 好友申请实体
     * @return 删除结果
     */
    @DeleteMapping("/friends/applications")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteUserFriendApplication(@RequestBody UserFriendApplication userFriendApplication) {
        if (userService.deleteUserFriendApplication(userFriendApplication)){
            return ResponseUtil.success("UserFriendApplication deleted.");
        } else {
            return ResponseUtil.error("UserFriendApplication not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 添加好友
     * @param userFriendApplication 好友申请实体
     * @return 添加结果
     */
    @PostMapping("/friends")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserFriend(@RequestBody UserFriendApplication userFriendApplication) {
        if (userService.addUserFriend(userFriendApplication)){
            return ResponseUtil.success("UserFriend added.");
        } else {
            return ResponseUtil.error("UserFriend not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新好友信息
     * @param userFriend 好友实体
     * @return 更新结果
     */
    @PutMapping("/friends")
    @RoleRequired({3})
    public ResponseEntity<Object> updateUserFriend(@RequestBody UserFriend userFriend) {
        if (userService.updateUserFriend(userFriend)){
            return ResponseUtil.success("UserFriend updated.");
        } else {
            return ResponseUtil.error("UserFriend not updated.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除好友
     * @param userFriend 好友实体
     * @return 删除结果
     */
    @DeleteMapping("/friends")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteUserFriend(@RequestBody UserFriend userFriend) {
        if (userService.deleteUserFriend(userFriend)){
            return ResponseUtil.success("UserFriend deleted.");
        } else {
            return ResponseUtil.error("UserFriend not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 获取用户收藏的商户
     * @param userId 用户ID
     * @return 收藏的商户列表
     */
    @GetMapping("/favorite_merchants/{userId}")
    public ResponseEntity<Object> getUserFavoriteMerchants(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserFavoriteMerchantListByUserId(userId));
    }

    /**
     * 添加收藏的商户
     * @param userFavoriteMerchant 收藏的商户实体
     * @return 添加结果
     */
    @PostMapping("/favorite_merchants")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserFavoriteMerchant(@RequestBody UserFavoriteMerchant userFavoriteMerchant) {
        if (userService.addUserFavoriteMerchant(userFavoriteMerchant)){
            return ResponseUtil.success("UserFavoriteMerchant added.");
        } else {
            return ResponseUtil.error("UserFavoriteMerchant not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除收藏的商户
     * @param favoriteId 收藏ID
     * @return 删除结果
     */
    @DeleteMapping("/favorite_merchants/{favoriteId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteUserFavoriteMerchant(@PathVariable Integer favoriteId) {
        if (userService.deleteUserFavoriteMerchant(favoriteId)){
            return ResponseUtil.success("UserFavoriteMerchant deleted.");
        } else {
            return ResponseUtil.error("UserFavoriteMerchant not deleted.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 获取用户收藏的商品
     * @param userId 用户ID
     * @return 收藏的商品列表
     */
    @GetMapping("/favorite_products/{userId}")
    public ResponseEntity<Object> getUserFavoriteProducts(@PathVariable Integer userId) {
        return ResponseUtil.success(userService.getUserFavoriteProductListByUserId(userId));
    }

    /**
     * 添加收藏的商品
     * @param userFavoriteProduct 收藏的商品实体
     * @return 添加结果
     */
    @PostMapping("/favorite_products")
    @RoleRequired({3})
    public ResponseEntity<Object> addUserFavoriteProduct(@RequestBody UserFavoriteProduct userFavoriteProduct) {
        if (userService.addUserFavoriteProduct(userFavoriteProduct)){
            return ResponseUtil.success("UserFavoriteProduct added.");
        } else {
            return ResponseUtil.error("UserFavoriteProduct not added.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除收藏的商品
     * @param favoriteId 收藏ID
     * @return 删除结果
     */
    @DeleteMapping("/favorite_products/{favoriteId}")
    @RoleRequired({3})
    public ResponseEntity<Object> deleteUserFavoriteProduct(@PathVariable Integer favoriteId) {
        if (userService.deleteUserFavoriteProduct(favoriteId)){
            return ResponseUtil.success("UserFavoriteProduct deleted.");
        } else {
            return ResponseUtil.error("UserFavoriteProduct not deleted.", HttpStatus.BAD_REQUEST);
        }
    }
}
