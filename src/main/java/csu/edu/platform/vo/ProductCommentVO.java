package csu.edu.platform.vo;

import csu.edu.platform.entity.MerchantProductComment;
import csu.edu.platform.entity.UserInfo;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class ProductCommentVO {
    private Integer commentId;
    private Integer productId;
    private Integer userId;
    private String content;
    private Integer rating;
    private LocalDateTime createdAt;
    private String name;
    private String imageUrl;

    public ProductCommentVO(MerchantProductComment merchantProductComment, UserInfo userInfo){
        this.commentId = merchantProductComment.getCommentId();
        this.productId = merchantProductComment.getProductId();
        this.userId = merchantProductComment.getUserId();
        this.content = merchantProductComment.getContent();
        this.rating = merchantProductComment.getRating();
        this.createdAt = merchantProductComment.getCreatedAt();
        this.name = userInfo.getName();
        this.imageUrl = userInfo.getImageUrl();
    }
}
