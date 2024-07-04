package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@TableName("merchant_promotion")
public class MerchantPromotion {
    @TableId(value = "promotion_id", type = IdType.AUTO)
    private Integer promotionId;
    private Integer merchantId;
    private LocalDate startDate;
    private LocalDate endDate;
    private String details;
    private LocalDateTime createdAt;
}
