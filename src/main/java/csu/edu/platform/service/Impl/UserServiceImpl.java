package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import csu.edu.platform.entity.*;
import csu.edu.platform.persistence.*;
import csu.edu.platform.service.UserService;
import csu.edu.platform.vo.UserFriendVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserInfoMapper userInfoMapper;
    @Autowired
    private UserFriendMapper userFriendMapper;
    @Autowired
    private UserFriendCategoryMapper userFriendCategoryMapper;
    @Autowired
    private UserFriendApplicationMapper userFriendApplicationMapper;
    @Autowired
    private UserFavoriteMerchantMapper userFavoriteMerchantMapper;
    @Autowired
    private UserFavoriteProductMapper userFavoriteProductMapper;

    public String getImageUrl(Integer userId) {
        return userInfoMapper.selectById(userId).getImageUrl();
    }
    public Boolean setImageUrl(Integer userId, String imageUrl) {
        UserInfo userInfo = userInfoMapper.selectById(userId);
        userInfo.setImageUrl(imageUrl);
        return userInfoMapper.updateById(userInfo) != 0;
    }
    public UserInfo getUserInfoByUserId(Integer userId) {
        return userInfoMapper.selectById(userId);
    }
    public UserInfo getUserInfoByAccountId(Integer accountId) {
        QueryWrapper<UserInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account_id", accountId);
        return userInfoMapper.selectOne(queryWrapper);
    }
    public List<UserInfo> getUserInfoList() {
        return userInfoMapper.selectList(null);
    }
    public List<UserInfo> getUserInfoListByKeyword(String keyword) {
        QueryWrapper<UserInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("name", keyword);
        return userInfoMapper.selectList(queryWrapper);
    }
    public Integer getUserIdByAccountId(Integer accountId) {
        QueryWrapper<UserInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account_id", accountId);
        return userInfoMapper.selectOne(queryWrapper).getUserId();
    }
    public Boolean addUserInfo(UserInfo userInfo) {
        return userInfoMapper.insert(userInfo) != 0;
    }
    public Boolean updateUserInfo(UserInfo userInfo) {
        return userInfoMapper.updateById(userInfo) != 0;
    }
    public Boolean deleteUserInfo(Integer userId) {
        return userInfoMapper.deleteById(userId) != 0;
    }

    public List<UserFriendCategory> getUserFriendCategoryListByUserId(Integer userId) {
        QueryWrapper<UserFriendCategory> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return userFriendCategoryMapper.selectList(queryWrapper);
    }
    public Boolean addUserFriendCategory(UserFriendCategory userFriendCategory) {
        return userFriendCategoryMapper.insert(userFriendCategory) != 0;
    }
    public Boolean updateUserFriendCategory(UserFriendCategory userFriendCategory) {
        return userFriendCategoryMapper.updateById(userFriendCategory) != 0;
    }
    public Boolean deleteUserFriendCategory(Integer categoryId) {
        return userFriendCategoryMapper.deleteById(categoryId) != 0;
    }

    public List<UserFriendVO> getUserFriendVOListByUserId(Integer userId) {
        QueryWrapper<UserFriend> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        List<UserFriend> userFriends = userFriendMapper.selectList(queryWrapper);
        List<UserFriendVO> userFriendVOList = new ArrayList<>();
        for (UserFriend userFriend : userFriends) {
            QueryWrapper<UserFriendCategory> queryWrapper1 = new QueryWrapper<>();
            queryWrapper1.eq("category_id", userFriend.getCategoryId());
            UserFriendCategory userFriendCategory = userFriendCategoryMapper.selectOne(queryWrapper1);
            UserFriendVO userFriendVO = new UserFriendVO(userFriend, userFriendCategory);
            userFriendVOList.add(userFriendVO);
        }
        return userFriendVOList;
    }
    public List<UserFriendVO> getUserFriendVOListByUserIdAndCategoryId(Integer userId, Integer categoryId) {
        QueryWrapper<UserFriend> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        queryWrapper.eq("category_id", categoryId);
        List<UserFriend> userFriends = userFriendMapper.selectList(queryWrapper);
        QueryWrapper<UserFriendCategory> queryWrapper1 = new QueryWrapper<>();
        queryWrapper1.eq("category_id", categoryId);
        UserFriendCategory userFriendCategory = userFriendCategoryMapper.selectOne(queryWrapper1);
        List<UserFriendVO> userFriendVOList = new ArrayList<>();
        for (UserFriend userFriend : userFriends) {
            UserFriendVO userFriendVO = new UserFriendVO(userFriend, userFriendCategory);
            userFriendVOList.add(userFriendVO);
        }
        return userFriendVOList;
    }
    public List<UserFriendApplication> getUserFriendApplicationListByUserId(Integer userId){
        QueryWrapper<UserFriendApplication> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return userFriendApplicationMapper.selectList(queryWrapper);
    }
    public Boolean addUserFriendApplication(UserFriendApplication userFriendApplication) {
        return userFriendApplicationMapper.insert(userFriendApplication) != 0;
    }
    public Boolean deleteUserFriendApplication(UserFriendApplication userFriendApplication) {
        QueryWrapper<UserFriendApplication> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userFriendApplication.getUserId());
        queryWrapper.eq("friend_id", userFriendApplication.getFriendId());
        return userFriendApplicationMapper.delete(queryWrapper) != 0;
    }
    public Boolean addUserFriend(UserFriendApplication userFriendApplication) {
        UserFriend userFriend = new UserFriend();
        userFriend.setUserId(userFriendApplication.getUserId());
        userFriend.setFriendId(userFriendApplication.getFriendId());
        userFriend.setCategoryId(userFriendApplication.getCategoryId());
        if(deleteUserFriendApplication(userFriendApplication)){
            return userFriendMapper.insert(userFriend) != 0;
        }
        return false;
    }
    public Boolean updateUserFriend(UserFriend userFriend) {
        UpdateWrapper<UserFriend> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("user_id", userFriend.getUserId())
                .eq("friend_id", userFriend.getFriendId())
                .set("category_id", userFriend.getCategoryId());
        return userFriendMapper.update(updateWrapper) != 0;
    }
    public Boolean deleteUserFriend(UserFriend userFriend) {
        QueryWrapper<UserFriend> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userFriend.getUserId());
        queryWrapper.eq("friend_id", userFriend.getFriendId());
        return userFriendMapper.delete(queryWrapper) != 0;
    }

    public List<UserFavoriteMerchant> getUserFavoriteMerchantListByUserId(Integer userId) {
        QueryWrapper<UserFavoriteMerchant> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return userFavoriteMerchantMapper.selectList(queryWrapper);
    }

    @Override
    public Integer checkUserFavoriteMerchant(UserFavoriteMerchant userFavoriteMerchant) {
        QueryWrapper<UserFavoriteMerchant> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userFavoriteMerchant.getUserId());
        queryWrapper.eq("favorite_merchant_id", userFavoriteMerchant.getMerchantId());
        UserFavoriteMerchant favoriteMerchant = userFavoriteMerchantMapper.selectOne(queryWrapper);
        if(favoriteMerchant != null){
            return favoriteMerchant.getFavoriteId();
        } else {
            return 0;
        }
    }

    public Boolean addUserFavoriteMerchant(UserFavoriteMerchant userFavoriteMerchant) {
        return userFavoriteMerchantMapper.insert(userFavoriteMerchant) != 0;
    }
    public Boolean deleteUserFavoriteMerchant(Integer favoriteId) {
        return userFavoriteMerchantMapper.deleteById(favoriteId) != 0;
    }

    public List<UserFavoriteProduct> getUserFavoriteProductListByUserId(Integer userId) {
        QueryWrapper<UserFavoriteProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return userFavoriteProductMapper.selectList(queryWrapper);
    }

    @Override
    public Integer createUserFavoriteProduct(UserFavoriteProduct userFavoriteProduct) {
        QueryWrapper<UserFavoriteProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userFavoriteProduct.getUserId());
        queryWrapper.eq("product_id", userFavoriteProduct.getProductId());
        UserFavoriteProduct favoriteProduct = userFavoriteProductMapper.selectOne(queryWrapper);
        if(favoriteProduct != null){
            return favoriteProduct.getFavoriteId();
        } else {
            return 0;
        }
    }

    public Boolean addUserFavoriteProduct(UserFavoriteProduct userFavoriteProduct) {
        return userFavoriteProductMapper.insert(userFavoriteProduct) != 0;
    }
    public Boolean deleteUserFavoriteProduct(Integer favoriteId) {
        return userFavoriteProductMapper.deleteById(favoriteId) != 0;
    }
}
