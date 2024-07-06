package csu.edu.platform.vo;

import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantProductCategory;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class ProductVO {
    private Integer productId;
    private Integer merchantId;
    private String productName;
    private Integer categoryId;
    private String categoryName;
    private Double price;
    private String description;
    private String imageUrl;
    private LocalDateTime createdAt;

    public ProductVO(MerchantProduct merchantProduct, MerchantProductCategory merchantProductCategory) {
        this.productId = merchantProduct.getProductId();
        this.merchantId = merchantProduct.getMerchantId();
        this.productName = merchantProduct.getProductName();
        this.categoryId = merchantProductCategory.getCategoryId();
        this.categoryName = merchantProductCategory.getCategoryName();
        this.price = merchantProduct.getPrice();
        this.description = merchantProduct.getDescription();
        this.imageUrl = merchantProduct.getImageUrl();
        this.createdAt = merchantProduct.getCreatedAt();
    }

    public MerchantProduct parseMerchantProduct() {
        MerchantProduct merchantProduct = new MerchantProduct();
        merchantProduct.setProductId(this.productId);
        merchantProduct.setMerchantId(this.merchantId);
        merchantProduct.setProductName(this.productName);
        merchantProduct.setCategoryId(this.categoryId);
        merchantProduct.setPrice(this.price);
        merchantProduct.setDescription(this.description);
        merchantProduct.setImageUrl(this.imageUrl);
        merchantProduct.setCreatedAt(this.createdAt);
        return merchantProduct;
    }
}
