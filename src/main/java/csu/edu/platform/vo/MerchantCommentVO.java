package csu.edu.platform.vo;

import csu.edu.platform.entity.MerchantComment;
import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.entity.UserInfo;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class MerchantCommentVO {
    private Integer commentId;
    private Integer merchantId;
    private Integer userId;
    private String content;
    private Integer rating;
    private LocalDateTime createdAt;
    private String name;
    private String imageUrl;

    public MerchantCommentVO(MerchantComment merchantComment, UserInfo userInfo){
        this.commentId = merchantComment.getCommentId();
        this.merchantId = merchantComment.getMerchantId();
        this.userId = userInfo.getUserId();
        this.content = merchantComment.getContent();
        this.rating = merchantComment.getRating();
        this.createdAt = merchantComment.getCreatedAt();
        this.name = userInfo.getName();
        this.imageUrl = userInfo.getImageUrl();
    }
}
