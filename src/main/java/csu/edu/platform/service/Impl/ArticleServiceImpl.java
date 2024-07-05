package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.SystemArticle;
import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.persistence.SystemArticleCategoryMapper;
import csu.edu.platform.persistence.SystemArticleMapper;
import csu.edu.platform.service.ArticleService;
import csu.edu.platform.vo.ArticleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private SystemArticleMapper systemArticleMapper;
    @Autowired
    private SystemArticleCategoryMapper systemArticleCategoryMapper;

    public ArticleVO getArticleVOByArticleId(int articleId) {
        SystemArticle systemArticle = systemArticleMapper.selectById(articleId);
        SystemArticleCategory systemArticleCategory = systemArticleCategoryMapper.selectById(articleId);
        if (systemArticleCategory == null) {
            return null;
        }
        return new ArticleVO(systemArticle, systemArticleCategory);
    }

    public List<ArticleVO> getArticleVOList(){
        List<SystemArticle> systemArticleList = systemArticleMapper.selectList(null);
        List<ArticleVO> articleVOList = new ArrayList<>();
        for (SystemArticle systemArticle : systemArticleList) {
            ArticleVO articleVO = getArticleVOByArticleId(systemArticle.getArticleId());
            articleVOList.add(articleVO);
        }
        return articleVOList;
    }

    public List<ArticleVO> getArticleVOListByAuthorId(int authorId) {
        QueryWrapper<SystemArticle> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id", authorId);
        List<SystemArticle> systemArticles = systemArticleMapper.selectList(queryWrapper);
        List<ArticleVO> articleVOList = new ArrayList<>();
        for (SystemArticle systemArticle : systemArticles) {
            ArticleVO articleVO = getArticleVOByArticleId(systemArticle.getArticleId());
            articleVOList.add(articleVO);
        }
        return articleVOList;
    }

    public Boolean addArticleVO (ArticleVO articleVO) {
        SystemArticle systemArticle = ArticleVO.parseSystemArticle(articleVO);
        return systemArticleMapper.insert(systemArticle) != 0;
    }

    public Boolean deleteArticleVO (Integer articleId) {
        return systemArticleMapper.deleteById(articleId) != 0;
    }

    public Boolean updateArticleVO (ArticleVO articleVO) {
        SystemArticle systemArticle = ArticleVO.parseSystemArticle(articleVO);
        return systemArticleMapper.updateById(systemArticle) != 0;
    }

    public List<SystemArticleCategory> getArticleCategoryList() {
        QueryWrapper<SystemArticleCategory> queryWrapper = new QueryWrapper<>();
        return systemArticleCategoryMapper.selectList(queryWrapper);
    }

    public Boolean addArticleCategory (SystemArticleCategory articleCategory) {
        return systemArticleCategoryMapper.insert(articleCategory) != 0;
    }

    public Boolean deleteArticleCategory (Integer articleCategoryId) {
        return systemArticleCategoryMapper.deleteById(articleCategoryId) != 0;
    }

    public Boolean updateArticleCategory (SystemArticleCategory articleCategory) {
        return systemArticleCategoryMapper.updateById(articleCategory) != 0;
    }
}
