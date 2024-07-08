package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("user_favorite_merchant")
public class UserFavoriteMerchant {
    @TableId(value = "favorite_id", type = IdType.AUTO)
    @Schema(description = "收藏ID", example = "1")
    private Integer favoriteId;
    @Schema(description = "商户ID", example = "1")
    private Integer userId;
    @Schema(description = "商户ID", example = "1")
    private Integer merchantId;
    @Schema(description = "创建时间 默认当前")
    private LocalDateTime createdAt;
}
