package csu.edu.platform.vo;

import csu.edu.platform.entity.SystemArticle;
import csu.edu.platform.entity.SystemArticleCategory;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class ArticleVO {
    private Integer articleId;
    private String title;
    private String content;
    private Integer categoryId;
    private String categoryName;
    private Integer authorId;
    private LocalDateTime createdAt;

    public ArticleVO(SystemArticle systemArticle, SystemArticleCategory systemArticleCategory){
        this.articleId = systemArticle.getArticleId();
        this.title = systemArticle.getTitle();
        this.content = systemArticle.getContent();
        this.categoryId = systemArticleCategory.getCategoryId();
        this.categoryName = systemArticleCategory.getCategoryName();
        this.authorId = systemArticle.getAuthorId();
        this.createdAt = systemArticle.getCreatedAt();
    }

    public SystemArticle parseSystemArticle(){
        SystemArticle systemArticle = new SystemArticle();
        systemArticle.setArticleId(this.getArticleId());
        systemArticle.setTitle(this.getTitle());
        systemArticle.setContent(this.getContent());
        systemArticle.setCategoryId(this.getCategoryId());
        systemArticle.setAuthorId(this.getAuthorId());
        return systemArticle;
    }
}
