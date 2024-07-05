package csu.edu.platform.vo;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ArticleVO {
    private Integer articleId;
    private String title;
    private String content;
    private Integer categoryId;
    private String categoryName;
    private Integer authorId;
    private LocalDateTime createdAt;
}
