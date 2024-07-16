package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.entity.UserInfo;
import csu.edu.platform.persistence.MerchantCommentMapper;
import csu.edu.platform.persistence.MerchantProductCommentMapper;
import csu.edu.platform.persistence.UserInfoMapper;
import csu.edu.platform.service.CommentService;
import csu.edu.platform.vo.MerchantCommentVO;
import csu.edu.platform.vo.ProductCommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private MerchantCommentMapper merchantCommentMapper;
    @Autowired
    private MerchantProductCommentMapper merchantProductCommentMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;

    public MerchantCommentVO getMerchantCommentByMCommentId(Integer commentId) {
        MerchantComment merchantComment = merchantCommentMapper.selectById(commentId);
        UserInfo userInfo = userInfoMapper.selectById(merchantComment.getUserId());
        return new MerchantCommentVO(merchantComment, userInfo);
    }
    public List<MerchantCommentVO> getMerchantCommentListByMerchantId(Integer merchantId) {
        QueryWrapper<MerchantComment> queryWrapper = new QueryWrapper<MerchantComment>();
        queryWrapper.eq("merchant_id", merchantId);
        List<MerchantComment> merchantComments = merchantCommentMapper.selectList(queryWrapper);
        List<MerchantCommentVO> merchantCommentVOList = new ArrayList<>();
        for (MerchantComment merchantComment : merchantComments) {
            UserInfo userInfo = userInfoMapper.selectById(merchantComment.getUserId());
            merchantCommentVOList.add(new MerchantCommentVO(merchantComment, userInfo));
        }
        return merchantCommentVOList;
    }
    public List<MerchantCommentVO> getMerchantCommentListByUserId(Integer userId) {
        QueryWrapper<MerchantComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        List<MerchantComment> merchantComments = merchantCommentMapper.selectList(queryWrapper);
        List<MerchantCommentVO> merchantCommentVOList = new ArrayList<>();
        for (MerchantComment merchantComment : merchantComments) {
            UserInfo userInfo = userInfoMapper.selectById(merchantComment.getUserId());
            merchantCommentVOList.add(new MerchantCommentVO(merchantComment, userInfo));
        }
        return merchantCommentVOList;
    }
    public Boolean addMerchantComment(MerchantComment merchantComment) {
        return merchantCommentMapper.insert(merchantComment) != 0;
    }
    public Boolean updateMerchantComment(MerchantComment merchantComment) {
        return merchantCommentMapper.updateById(merchantComment) != 0;
    }
    public Boolean deleteMerchantComment(Integer commentId) {
        return merchantCommentMapper.deleteById(commentId) != 0;
    }

    public ProductCommentVO getMerchantProductCommentByMCommentId(Integer commentId) {
        MerchantProductComment merchantProductComment = merchantProductCommentMapper.selectById(commentId);
        UserInfo userInfo = userInfoMapper.selectById(merchantProductComment.getUserId());
        return new ProductCommentVO(merchantProductComment, userInfo);
    }
    public List<ProductCommentVO> getMerchantProductCommentListByProductId(Integer productId) {
        QueryWrapper<MerchantProductComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("product_id", productId);
        List<MerchantProductComment> merchantProductComments = merchantProductCommentMapper.selectList(queryWrapper);
        List<ProductCommentVO> productCommentVOList = new ArrayList<>();
        for (MerchantProductComment merchantProductComment : merchantProductComments) {
            UserInfo userInfo = userInfoMapper.selectById(merchantProductComment.getUserId());
            productCommentVOList.add(new ProductCommentVO(merchantProductComment, userInfo));
        }
        return productCommentVOList;
    }
    public List<ProductCommentVO> getMerchantProductCommentListByUserId(Integer userId) {
        QueryWrapper<MerchantProductComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        List<MerchantProductComment> merchantProductComments = merchantProductCommentMapper.selectList(queryWrapper);
        List<ProductCommentVO> productCommentVOList = new ArrayList<>();
        for (MerchantProductComment merchantProductComment : merchantProductComments) {
            UserInfo userInfo = userInfoMapper.selectById(merchantProductComment.getUserId());
            productCommentVOList.add(new ProductCommentVO(merchantProductComment, userInfo));
        }
        return productCommentVOList;
    }
    public Boolean addMerchantProductComment(MerchantProductComment merchantProductComment) {
        return merchantProductCommentMapper.insert(merchantProductComment) != 0;
    }
    public Boolean updateMerchantProductComment(MerchantProductComment merchantProductComment) {
        return merchantProductCommentMapper.updateById(merchantProductComment) != 0;
    }
    public Boolean deleteMerchantProductComment(Integer commentId) {
        return merchantProductCommentMapper.deleteById(commentId) != 0;
    }
}
