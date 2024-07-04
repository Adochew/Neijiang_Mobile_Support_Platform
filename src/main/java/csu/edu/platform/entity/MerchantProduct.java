package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("merchant_product")
public class MerchantProduct {
    @TableId(value = "product_id", type = IdType.AUTO)
    private Integer productId;
    private Integer merchantId;
    private String productName;
    private Integer categoryId;
    private Double price;
    private String description;
    private String imageUrl;
    private LocalDateTime createdAt;
}
