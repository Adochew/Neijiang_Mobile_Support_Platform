package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("user_favorite_merchant")
public class UserFavoriteMerchant {
    @TableId(value = "favorite_id", type = IdType.AUTO)
    private Integer favoriteId;
    private Integer userId;
    private Integer merchantId;
    private LocalDateTime createdAt;
}
