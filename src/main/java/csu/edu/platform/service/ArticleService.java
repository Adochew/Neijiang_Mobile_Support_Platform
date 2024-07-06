package csu.edu.platform.service;

import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.vo.ArticleVO;

import java.util.List;

public interface ArticleService {
    ArticleVO getArticleVOByArticleId(int articleId);
    List<ArticleVO> getArticleVOList();
    List<ArticleVO> getArticleVOListByAuthorId(int authorId);
    List<ArticleVO> getArticleVOListByCategoryId(int categoryId);
    Boolean addArticleInfo (ArticleVO articleVO);
    Boolean updateArticleInfo (ArticleVO articleVO);
    Boolean deleteArticleInfo (Integer articleId);

    List<SystemArticleCategory> getArticleCategoryList();
    Boolean addArticleCategory (SystemArticleCategory articleCategory);
    Boolean updateArticleCategory (SystemArticleCategory articleCategory);
    Boolean deleteArticleCategory (Integer articleCategoryId);
}
