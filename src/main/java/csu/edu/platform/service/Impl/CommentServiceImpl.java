package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.persistence.MerchantCommentMapper;
import csu.edu.platform.persistence.MerchantProductCommentMapper;
import csu.edu.platform.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private MerchantCommentMapper merchantCommentMapper;
    @Autowired
    private MerchantProductCommentMapper merchantProductCommentMapper;

    public MerchantComment getMerchantCommentByMCommentId(Integer commentId) {
        return merchantCommentMapper.selectById(commentId);
    }
    public List<MerchantComment> getMerchantCommentListByMerchantId(Integer merchantId) {
        QueryWrapper<MerchantComment> queryWrapper = new QueryWrapper<MerchantComment>();
        queryWrapper.eq("merchant_id", merchantId);
        return merchantCommentMapper.selectList(queryWrapper);
    }
    public List<MerchantComment> getMerchantCommentListByUserId(Integer userId) {
        QueryWrapper<MerchantComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return merchantCommentMapper.selectList(queryWrapper);
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

    public MerchantProductComment getMerchantProductCommentByMCommentId(Integer commentId) {
        return merchantProductCommentMapper.selectById(commentId);
    }
    public List<MerchantProductComment> getMerchantProductCommentListByProductId(Integer productId) {
        QueryWrapper<MerchantProductComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("product_id", productId);
        return merchantProductCommentMapper.selectList(queryWrapper);
    }
    public List<MerchantProductComment> getMerchantProductCommentListByUserId(Integer userId) {
        QueryWrapper<MerchantProductComment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userId);
        return merchantProductCommentMapper.selectList(queryWrapper);
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
