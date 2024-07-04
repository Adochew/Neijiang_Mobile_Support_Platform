package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("system_article")
public class SystemArticle {
    @TableId(value = "article_id", type = IdType.AUTO)
    private Integer articleId;
    private String title;
    private String content;
    private Integer categoryId;
    private Integer authorId;
    private LocalDateTime createdAt;
}
