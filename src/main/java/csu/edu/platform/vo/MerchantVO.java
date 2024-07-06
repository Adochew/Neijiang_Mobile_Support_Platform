package csu.edu.platform.vo;

import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantInfo;
import csu.edu.platform.entity.SystemArticle;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class MerchantVO {
    private Integer merchantId;
    private Integer ownerId;
    private Integer categoryId;
    private String categoryName;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String businessType;
    private String businessEnvironment;
    private String businessLocation;
    private String productCategory;
    private String imageUrl;
    private LocalDateTime createdAt;

    public MerchantVO(MerchantInfo merchantInfo, MerchantCategory merchantCategory) {
        this.merchantId = merchantInfo.getMerchantId();
        this.ownerId = merchantInfo.getOwnerId();
        this.categoryId = merchantCategory.getCategoryId();
        this.categoryName = merchantCategory.getCategoryName();
        this.name = merchantInfo.getName();
        this.address = merchantInfo.getAddress();
        this.phone = merchantInfo.getPhone();
        this.email = merchantInfo.getEmail();
        this.businessType = merchantInfo.getBusinessType();
        this.businessEnvironment = merchantInfo.getBusinessEnvironment();
        this.businessLocation = merchantInfo.getBusinessLocation();
        this.productCategory = merchantInfo.getProductCategory();
        this.imageUrl = merchantInfo.getImageUrl();
        this.createdAt = LocalDateTime.now();
    }

    public MerchantInfo parseMerchantInfo(){
        MerchantInfo merchantInfo = new MerchantInfo();
        merchantInfo.setMerchantId(merchantId);
        merchantInfo.setOwnerId(ownerId);
        merchantInfo.setCategoryId(categoryId);
        merchantInfo.setName(name);
        merchantInfo.setAddress(address);
        merchantInfo.setPhone(phone);
        merchantInfo.setEmail(email);
        merchantInfo.setBusinessType(businessType);
        merchantInfo.setBusinessEnvironment(businessEnvironment);
        merchantInfo.setBusinessLocation(businessLocation);
        merchantInfo.setProductCategory(productCategory);
        merchantInfo.setImageUrl(imageUrl);
        return merchantInfo;
    }
}
