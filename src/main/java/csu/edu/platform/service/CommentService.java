package csu.edu.platform.service;

import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;

import java.util.List;

public interface CommentService {
    MerchantComment getMerchantCommentByMCommentId(Integer commentId);
    List<MerchantComment> getMerchantCommentListByMerchantId(Integer merchantId);
    List<MerchantComment> getMerchantCommentListByUserId(Integer userId);
    Boolean addMerchantComment(MerchantComment merchantComment);
    Boolean updateMerchantComment(MerchantComment merchantComment);
    Boolean deleteMerchantComment(Integer commentId);

    MerchantProductComment getMerchantProductCommentByMCommentId(Integer commentId);
    List<MerchantProductComment> getMerchantProductCommentListByProductId(Integer productId);
    List<MerchantProductComment> getMerchantProductCommentListByUserId(Integer userId);
    Boolean addMerchantProductComment(MerchantProductComment merchantProductComment);
    Boolean updateMerchantProductComment(MerchantProductComment merchantProductComment);
    Boolean deleteMerchantProductComment(Integer commentId);
}
