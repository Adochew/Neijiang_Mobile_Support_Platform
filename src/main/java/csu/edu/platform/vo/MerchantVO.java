package csu.edu.platform.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class MerchantVO {
    private Integer merchantId;
    private Integer ownerId;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String businessType;
    private String businessEnvironment;
    private String businessLocation;
    private String productCategory;
    private String categoryName;
    private String imageUrl;
    private LocalDateTime createdAt;
}
