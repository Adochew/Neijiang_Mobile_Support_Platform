package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("merchant_category")
public class MerchantCategory {
    @TableId(value = "category_id", type = IdType.AUTO)
    private Integer categoryId;
    private String categoryName;
}
