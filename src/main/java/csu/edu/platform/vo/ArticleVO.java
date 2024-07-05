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

    public static SystemArticle parseSystemArticle(ArticleVO articleVO){
        SystemArticle systemArticle = new SystemArticle();
        systemArticle.setArticleId(articleVO.getArticleId());
        systemArticle.setTitle(articleVO.getTitle());
        systemArticle.setContent(articleVO.getContent());
        systemArticle.setCategoryId(articleVO.getCategoryId());
        systemArticle.setAuthorId(articleVO.getAuthorId());
        return systemArticle;
    }
}
