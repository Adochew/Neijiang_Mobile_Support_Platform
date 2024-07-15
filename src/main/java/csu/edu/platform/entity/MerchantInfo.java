package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("merchant_info")
public class MerchantInfo {
    @TableId(value = "merchant_id", type = IdType.AUTO)
    private Integer merchantId;
    private Integer ownerId;
    private Integer categoryId;
    private String name;
    private String address;
    private String coordinates;
    private String phone;
    private String email;
    private String businessType;
    private String businessEnvironment;
    private String businessLocation;
    private String productCategory;
    private String imageUrl;
    private LocalDateTime createdAt;
}
