package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("merchant_product_comment")
public class MerchantProductComment {
    @TableId(value = "comment_id", type = IdType.AUTO)
    private Integer commentId;
    private Integer productId;
    private Integer userId;
    private String content;
    private Integer rating;
    private LocalDateTime createdAt;
}
