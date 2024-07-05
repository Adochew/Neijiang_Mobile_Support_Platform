package csu.edu.platform.vo;

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
}
