package csu.edu.platform.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.*;
import csu.edu.platform.vo.UserFriendVO;

import java.util.List;

public interface UserService{
    Integer getMerchantFavoriteCount(Integer merchantId);
    Integer getProductFavoriteCount(Integer productId);

        String getImageUrl(Integer userId);
    Boolean setImageUrl(Integer userId, String imageUrl);

    UserInfo getUserInfoByUserId(Integer userId);
    UserInfo getUserInfoByAccountId(Integer accountId);
    List<UserInfo> getUserInfoList();
    List<UserInfo> getUserInfoListByKeyword(String keyword);
    Integer getUserIdByAccountId(Integer accountId);
    Boolean addUserInfo(UserInfo userInfo);
    Boolean updateUserInfo(UserInfo userInfo);
    Boolean deleteUserInfo(Integer userId);

    List<UserFriendCategory> getUserFriendCategoryListByUserId(Integer userId);
    Boolean addUserFriendCategory(UserFriendCategory userFriendCategory);
    Boolean updateUserFriendCategory(UserFriendCategory userFriendCategory);
    Boolean deleteUserFriendCategory(Integer categoryId);

    List<UserFriendVO> getUserFriendVOListByUserId(Integer userId);
    List<UserFriendVO> getUserFriendVOListByUserIdAndCategoryId(Integer userId, Integer categoryId);
    List<UserFriendApplication> getUserFriendApplicationListByUserId(Integer userId);
    Boolean addUserFriendApplication(UserFriendApplication userFriendApplication);
    Boolean deleteUserFriendApplication(UserFriendApplication userFriendApplication);
    Boolean addUserFriend(UserFriendApplication userFriendApplication);
    Boolean updateUserFriend(UserFriend userFriend);
    Boolean deleteUserFriend(UserFriend userFriend);

    List<UserFavoriteMerchant> getUserFavoriteMerchantListByUserId(Integer userId);
    Integer checkUserFavoriteMerchant(UserFavoriteMerchant userFavoriteMerchant);
    Boolean addUserFavoriteMerchant(UserFavoriteMerchant userFavoriteMerchant);
    Boolean deleteUserFavoriteMerchant(Integer favoriteId);

    List<UserFavoriteProduct> getUserFavoriteProductListByUserId(Integer userId);
    Integer createUserFavoriteProduct(UserFavoriteProduct userFavoriteProduct);
    Boolean addUserFavoriteProduct(UserFavoriteProduct userFavoriteProduct);
    Boolean deleteUserFavoriteProduct(Integer favoriteId);
}
