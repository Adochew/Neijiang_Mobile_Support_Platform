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

    public ArticleVO getArticleVOByArticleId(Integer articleId) {
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
    public List<ArticleVO> getArticleVOListByAuthorId(Integer authorId) {
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
    public List<ArticleVO> getArticleVOListByKeyword(String keyword) {
        QueryWrapper<SystemArticle> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("title", keyword);
        List<SystemArticle> systemArticles = systemArticleMapper.selectList(queryWrapper);
        List<ArticleVO> articleVOList = new ArrayList<>();
        for (SystemArticle systemArticle : systemArticles) {
            SystemArticleCategory systemArticleCategory = systemArticleCategoryMapper.selectById(systemArticle.getArticleId());
            ArticleVO articleVO = getArticleVOByArticleId(systemArticle.getArticleId());
            articleVOList.add(articleVO);
        }
        return articleVOList;
    }
    public List<ArticleVO> getArticleVOListByCategoryId(Integer categoryId) {
        QueryWrapper<SystemArticle> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("category_id", categoryId);
        List<SystemArticle> systemArticles = systemArticleMapper.selectList(queryWrapper);
        SystemArticleCategory systemArticleCategory = systemArticleCategoryMapper.selectById(categoryId);
        List<ArticleVO> articleVOList = new ArrayList<>();
        for (SystemArticle systemArticle : systemArticles) {
            ArticleVO articleVO = new ArticleVO(systemArticle, systemArticleCategory);
            articleVOList.add(articleVO);
        }
        return articleVOList;
    }
    public Boolean addArticleInfo (ArticleVO articleVO) {
        return systemArticleMapper.insert(articleVO.parseSystemArticle()) != 0;
    }
    public Boolean updateArticleInfo (ArticleVO articleVO) {
        return systemArticleMapper.updateById(articleVO.parseSystemArticle()) != 0;
    }
    public Boolean deleteArticleInfo (Integer articleId) {
        return systemArticleMapper.deleteById(articleId) != 0;
    }

    public List<SystemArticleCategory> getArticleCategoryList() {
        QueryWrapper<SystemArticleCategory> queryWrapper = new QueryWrapper<>();
        return systemArticleCategoryMapper.selectList(queryWrapper);
    }
    public Boolean addArticleCategory (SystemArticleCategory articleCategory) {
        return systemArticleCategoryMapper.insert(articleCategory) != 0;
    }
    public Boolean updateArticleCategory (SystemArticleCategory articleCategory) {
        return systemArticleCategoryMapper.updateById(articleCategory) != 0;
    }
    public Boolean deleteArticleCategory (Integer articleCategoryId) {
        return systemArticleCategoryMapper.deleteById(articleCategoryId) != 0;
    }
}
