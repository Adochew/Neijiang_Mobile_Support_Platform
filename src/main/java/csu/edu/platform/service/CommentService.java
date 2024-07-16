package csu.edu.platform.service;

import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.vo.MerchantCommentVO;
import csu.edu.platform.vo.ProductCommentVO;

import java.util.List;

public interface CommentService {
    MerchantCommentVO getMerchantCommentByMCommentId(Integer commentId);
    List<MerchantCommentVO> getMerchantCommentListByMerchantId(Integer merchantId);
    List<MerchantCommentVO> getMerchantCommentListByUserId(Integer userId);
    Boolean addMerchantComment(MerchantComment merchantComment);
    Boolean updateMerchantComment(MerchantComment merchantComment);
    Boolean deleteMerchantComment(Integer commentId);

    ProductCommentVO getMerchantProductCommentByMCommentId(Integer commentId);
    List<ProductCommentVO> getMerchantProductCommentListByProductId(Integer productId);
    List<ProductCommentVO> getMerchantProductCommentListByUserId(Integer userId);
    Boolean addMerchantProductComment(MerchantProductComment merchantProductComment);
    Boolean updateMerchantProductComment(MerchantProductComment merchantProductComment);
    Boolean deleteMerchantProductComment(Integer commentId);
}
