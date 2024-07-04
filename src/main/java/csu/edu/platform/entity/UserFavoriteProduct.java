package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("user_favorite_product")
public class UserFavoriteProduct {
    @TableId(value = "favorite_id", type = IdType.AUTO)
    private Integer favoriteId;
    private Integer userId;
    private Integer productId;
    private LocalDateTime createdAt;
}

