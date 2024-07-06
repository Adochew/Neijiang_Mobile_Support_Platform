package csu.edu.platform;

import csu.edu.platform.entity.*;
import csu.edu.platform.service.*;
import csu.edu.platform.vo.ArticleVO;
import csu.edu.platform.vo.MerchantVO;
import csu.edu.platform.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class Test {
    @Autowired
    AccountService accountService;
    @Autowired
    ArticleService articleService;
    @Autowired
    GroupService groupService;
    @Autowired
    CommentService commentService;
    @Autowired
    MerchantService merchantService;
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;


    @org.junit.jupiter.api.Test
    public void test_accountService() {
         //查询
        System.out.println(accountService.getSystemAccountByAccountId(1)+"\n");
        System.out.println(accountService.getSystemAccountByUsername("管理员")+"\n");
        System.out.println(accountService.getSystemAccountByUsernameAndPassword("管理员","admin")+"\n");
        System.out.println(accountService.getSystemAccountListByKeyword("管理员")+"\n");
        System.out.println(accountService.getSystemAccountList()+"\n");
        System.out.println(accountService.getSystemAccountListByRoleId(1)+"\n");
        //添加与修改
        SystemAccount systemAccount= new SystemAccount();
        systemAccount.setUsername("test");
        systemAccount.setPassword("test");
        systemAccount.setRoleId(1);
        System.out.println(accountService.addSystemAccount(systemAccount)?"添加成功":"添加失败");

        systemAccount.setUsername("test2");
        System.out.println(accountService.updateSystemAccount(systemAccount)?"修改成功":"修改失败");
        //删除
        System.out.println(accountService.deleteSystemAccount(8)?"删除成功":"删除失败");
    }
    @org.junit.jupiter.api.Test
    public void test_articleService() {
        //查询
        System.out.println(articleService.getArticleVOByArticleId(1)+"\n");
        System.out.println(articleService.getArticleVOList()+"\n");
        System.out.println(articleService.getArticleVOListByAuthorId(1)+"\n");
        System.out.println(articleService.getArticleVOListByCategoryId(1)+"\n");
        System.out.println(articleService.getArticleCategoryList()+"\n");
        //添加与修改
        ArticleVO articleVO= new ArticleVO();
        articleVO.setAuthorId(1);
        articleVO.setCategoryId(1);
        articleVO.setTitle("test");
        articleVO.setContent("test");
        System.out.println(articleService.addArticleInfo(articleVO)?"书籍添加成功":"书籍添加失败");

        articleVO.setCategoryId(2);
        System.out.println(articleService.updateArticleInfo(articleVO)?"书籍修改成功":"书籍修改失败");

        SystemArticleCategory systemArticleCategory= new SystemArticleCategory();
        systemArticleCategory.setCategoryName("test");
        System.out.println(articleService.addArticleCategory(systemArticleCategory)?"种类添加成功":"种类添加失败");

        systemArticleCategory.setCategoryName("test2");
        System.out.println(articleService.updateArticleCategory(systemArticleCategory)?"种类修改成功":"种类修改失败");

        //删除
        System.out.println(articleService.deleteArticleInfo(5)?"书籍删除成功":"书籍删除失败");
        System.out.println(articleService.deleteArticleCategory(5)?"种类删除成功":"种类删除失败");
    }
    @org.junit.jupiter.api.Test
    public void test_groupService() {
        //查询
        System.out.println(groupService.getGroupInfoByGroupId(1)+"\n");
        System.out.println(groupService.getGroupInfoList()+"\n");
        System.out.println(groupService.getGroupInfoListByAccountId(2)+"\n");
        System.out.println(groupService.getGroupInfoListByKeyword("饭友群")+"\n");

        System.out.println(groupService.getGroupMemberByGroupId(1)+"\n");

        System.out.println(groupService.getGroupHistoryByGroupId(1)+"\n");
        //添加与修改
        GroupInfo groupInfo= new GroupInfo();
        groupInfo.setGroupName("test");
        groupInfo.setDescription("test");
        groupInfo.setImageUrl("test");
        System.out.println(groupService.addGroupInfo(groupInfo)? "群组添加成功" : "群组添加失败");

        groupInfo.setGroupName("test2");
        System.out.println(groupService.updateGroupInfo(groupInfo)? "群组修改成功" : "群组修改失败");

        GroupMember groupMember= new GroupMember();
        groupMember.setGroupId(3);
        groupMember.setAccountId(2);
        groupMember.setRole("管理员");
        System.out.println(groupService.addGroupMember(groupMember)? "群组成员添加成功" : "群组成员添加失败");

        GroupHistory groupHistory= new GroupHistory();
        groupHistory.setGroupId(3);
        groupHistory.setAction("test");
        System.out.println(groupService.addGroupHistory(groupHistory)? "群组历史记录添加成功" : "群组历史记录添加失败");
        //删除
        System.out.println(groupService.deleteGroupMember(3,2)? "群组成员删除成功" : "群组成员删除失败");
        System.out.println(groupService.deleteGroupInfo(3)? "群组删除成功" : "群组删除失败");

    }
    @org.junit.jupiter.api.Test
    public void test_commentService() {
         //查询
        System.out.println(commentService.getMerchantCommentByMCommentId(1)+"\n");
        System.out.println(commentService.getMerchantCommentListByMerchantId(1)+"\n");
        System.out.println(commentService.getMerchantCommentListByUserId(1)+"\n");

        System.out.println(commentService.getMerchantProductCommentByMCommentId(1)+"\n");
        System.out.println(commentService.getMerchantProductCommentListByProductId(1)+"\n");
        System.out.println(commentService.getMerchantProductCommentListByUserId(1)+"\n");

        //添加与修改
        MerchantComment merchantComment= new MerchantComment();
        merchantComment.setMerchantId(1);
        merchantComment.setUserId(1);
        merchantComment.setContent("test");
        System.out.println(commentService.addMerchantComment(merchantComment)? "商户评论添加成功" : "商户评论添加失败");

        merchantComment.setContent("test2");
        System.out.println(commentService.updateMerchantComment(merchantComment)? "商户评论修改成功" : "商户评论修改失败");

        MerchantProductComment merchantProductComment= new MerchantProductComment();
        merchantProductComment.setProductId(1);
        merchantProductComment.setUserId(1);
        merchantProductComment.setContent("test");
        System.out.println(commentService.addMerchantProductComment(merchantProductComment)? "商品评论添加成功" : "商品评论添加失败");

        merchantProductComment.setContent("test2");
        System.out.println(commentService.updateMerchantProductComment(merchantProductComment)? "商品评论修改成功" : "商品评论修改失败");
        //删除
        System.out.println(commentService.deleteMerchantComment(5)? "商户评论删除成功" : "商户评论删除失败");
        System.out.println(commentService.deleteMerchantProductComment(5)? "商品评论删除成功" : "商品评论删除失败");

    }
    @org.junit.jupiter.api.Test
    public void test_merchantService() {
        //查询
        System.out.println(merchantService.getMerchantVOByMerchantId(1)+"\n");

        System.out.println(merchantService.getMerchantPromotionListByMerchantId(1)+"\n");
        System.out.println(merchantService.getMerchantVOList()+"\n");
        System.out.println(merchantService.getMerchantVOListByCategoryId(1)+"\n");
        System.out.println(merchantService.getMerchantVOListByKeyword("一")+"\n");

        System.out.println(merchantService.getMerchantPromotionListByMerchantId(1)+"\n");

        //添加与修改

        MerchantCategory merchantCategory= new MerchantCategory();
        merchantCategory.setCategoryName("test");
        System.out.println(merchantService.addMerchantCategory(merchantCategory)? "商户种类添加成功" : "商户种类添加失败");

        merchantCategory.setCategoryName("test2");
        System.out.println(merchantService.updateMerchantCategory(merchantCategory)? "商户种类修改成功" : "商户种类修改失败");

        MerchantVO merchantVO= new MerchantVO();
        merchantVO.setAddress("test");
        merchantVO.setCategoryName("test");
        merchantVO.setCategoryId(1);
        merchantVO.setImageUrl("test");
        merchantVO.setName("test");
        merchantVO.setEmail("test");
        merchantVO.setBusinessEnvironment("test");
        merchantVO.setBusinessLocation("test");
        merchantVO.setBusinessType("test");
        merchantVO.setOwnerId(1);
        merchantVO.setProductCategory("test");

        System.out.println(merchantService.addMerchantInfo(merchantVO)? "商户添加成功" : "商户添加失败");

        merchantVO.setMerchantId(9);
        merchantVO.setEmail("test2");
        System.out.println(merchantService.updateMerchantInfo(merchantVO)? "商户修改成功" : "商户修改失败");

        MerchantPromotion merchantPromotion= new MerchantPromotion();
        merchantPromotion.setMerchantId(1);
        merchantPromotion.setDetails("test");
        System.out.println(merchantService.addMerchantPromotion(merchantPromotion)? "商户促销添加成功" : "商户促销添加失败");

        merchantPromotion.setDetails("test2");
        System.out.println(merchantService.updateMerchantPromotion(merchantPromotion)? "商户促销修改成功" : "商户促销修改失败");

        //删除
        System.out.println(merchantService.deleteMerchantCategory(4)? "商户种类删除成功" : "商户种类删除失败");
        System.out.println(merchantService.deleteMerchantInfo(9)? "商户删除成功" : "商户删除失败");
        System.out.println(merchantService.deleteMerchantPromotion(5)? "商户促销删除成功" : "商户促销删除失败");
    }

    @org.junit.jupiter.api.Test
    public void test_productService() {
        //查询
        System.out.println(productService.getMerchantProductCategoryList()+"\n");

        System.out.println(productService.getMerchantProductVOByproductId(1)+"\n");
        System.out.println(productService.getMerchantProductVOListByMerchantId(1)+"\n");
        System.out.println(productService.getMerchantProductVOListByMerchantIdAndCategoryId(1,1));
        System.out.println(productService.getMerchantProductVOListByMerchantIdAndKeyword(1,"笔记本电脑"));

        //添加与修改
        MerchantProductCategory merchantProductCategory= new MerchantProductCategory();
        merchantProductCategory.setCategoryName("test");
        System.out.println(productService.addMerchantProductCategory(merchantProductCategory)? "商品种类添加成功" : "商品种类添加失败");

        merchantProductCategory.setCategoryName("test2");
        System.out.println(productService.updateMerchantProductCategory(merchantProductCategory)? "商品种类修改成功" : "商品种类修改失败");

        ProductVO productVO= new ProductVO();
        productVO.setMerchantId(1);
        productVO.setCategoryId(1);
        productVO.setProductName("test");
        productVO.setPrice(100.0);
        System.out.println(productService.addMerchantProduct(productVO)? "商品添加成功" : "商品添加失败");

        productVO.setProductId(5);
        productVO.setProductName("test2");
        System.out.println(productService.updateMerchantProduct(productVO)? "商品修改成功" : "商品修改失败");

        //删除
        System.out.println(productService.deleteMerchantProduct(5)? "商品删除成功" : "商品删除失败");
        System.out.println(productService.deleteMerchantProductCategory(5)? "商品种类删除成功" : "商品种类删除失败");
    }

    @org.junit.jupiter.api.Test
    public void test_userService() {
        //查询
        System.out.println(userService.getUserInfoByUserId(1)+"\n");
        System.out.println(userService.getUserInfoByAccountId(3)+"\n");
        System.out.println(userService.getUserInfoList()+"\n");
        System.out.println(userService.getUserInfoListByKeyword("一")+"\n");
        System.out.println(userService.getUserIdByAccountId(3)+"\n");

        System.out.println(userService.getUserFriendCategoryListByUserId(1)+"\n");

        System.out.println(userService.getUserFriendVOListByUserId(1)+"\n");
        System.out.println(userService.getUserFriendVOListByUserIdAndCategoryId(1,1)+"\n");

        System.out.println(userService.getUserFavoriteMerchantListByUserId(1)+"\n");

        System.out.println(userService.getUserFavoriteProductListByUserId(1)+"\n");

        //添加与修改
        UserInfo userInfo= new UserInfo();
        userInfo.setAccountId(1);
        System.out.println(userService.addUserInfo(userInfo)? "用户添加成功" : "用户添加失败");

        userInfo.setAccountId(2);
        System.out.println(userService.updateUserInfo(userInfo)? "用户修改成功" : "用户修改失败");

        UserFriendCategory userFriendCategory= new UserFriendCategory();
        userFriendCategory.setCategoryName("test");
        System.out.println(userService.addUserFriendCategory(userFriendCategory)? "用户好友分类添加成功" : "用户好友分类添加失败");

        userFriendCategory.setCategoryName("test2");
        System.out.println(userService.updateUserFriendCategory(userFriendCategory)? "用户好友分类修改成功" : "用户好友分类修改失败");

        UserFriendApplication userFriendApplication= new UserFriendApplication();
        userFriendApplication.setUserId(1);
        userFriendApplication.setFriendId(5);
        userFriendApplication.setCategoryId(1);
        System.out.println(userService.addUserFriendApplication(userFriendApplication)? "用户好友申请添加成功" : "用户好友申请添加失败");


        System.out.println(userService.addUserFriend(userFriendApplication)? "用户好友添加成功" : "用户好友添加失败");
        UserFriend userFriend= new UserFriend();
        userFriend.setUserId(1);
        userFriend.setFriendId(5);
        userFriend.setCategoryId(2);
        System.out.println(userService.updateUserFriend(userFriend)? "用户好友修改成功" : "用户好友修改失败");

        UserFavoriteMerchant userFavoriteMerchant= new UserFavoriteMerchant();
        userFavoriteMerchant.setUserId(1);
        userFavoriteMerchant.setMerchantId(1);
        System.out.println(userService.addUserFavoriteMerchant(userFavoriteMerchant)? "用户收藏商户添加成功" : "用户收藏商户添加失败");

        UserFavoriteProduct userFavoriteProduct= new UserFavoriteProduct();
        userFavoriteProduct.setUserId(1);
        userFavoriteProduct.setProductId(1);
        System.out.println(userService.addUserFavoriteProduct(userFavoriteProduct)? "用户收藏商品添加成功" : "用户收藏商品添加失败");

        //删除
        System.out.println(userService.deleteUserInfo(5)? "用户删除成功" : "用户删除失败");
        System.out.println(userService.deleteUserFriendCategory(9)? "用户好友分类删除成功" : "用户好友分类删除失败");
        System.out.println(userService.deleteUserFriend(userFriend)? "用户好友删除成功" : "用户好友删除失败");
        System.out.println(userService.deleteUserFavoriteMerchant(5)? "用户收藏商户删除成功" : "用户收藏商户删除失败");
        System.out.println(userService.deleteUserFavoriteProduct(5)? "用户收藏商品删除成功" : "用户收藏商品删除失败");
    }

}
