package csu.edu.platform.service;

import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.vo.ArticleVO;

import java.util.List;

public interface ArticleService {
    ArticleVO getArticleVOByArticleId(int articleId);
    List<ArticleVO> getArticleVOList();
    List<ArticleVO> getArticleVOListByAuthorId(int authorId);
    Boolean addArticleVO (ArticleVO articleVO);
    Boolean deleteArticleVO (Integer articleId);
    Boolean updateArticleVO (ArticleVO articleVO);

    List<SystemArticleCategory> getArticleCategoryList();
    Boolean addArticleCategory (SystemArticleCategory articleCategory);
    Boolean deleteArticleCategory (Integer articleCategoryId);
    Boolean updateArticleCategory (SystemArticleCategory articleCategory);
}
