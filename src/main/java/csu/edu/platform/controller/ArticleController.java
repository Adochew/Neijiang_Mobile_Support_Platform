package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.service.ArticleService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.ArticleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/articles")
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    /**
     * 获取所有文章的接口。
     * @return 所有文章的列表。
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllArticles() {
        return ResponseUtil.success(articleService.getArticleVOList());
    }

    /**
     * 根据分类ID获取文章的接口。
     * @param categoryId 文章分类ID。
     * @return 指定分类ID的文章列表。
     */
    @GetMapping("/category/{categoryId}")
    public ResponseEntity<Object> getArticlesByCategoryId(@PathVariable Integer categoryId) {
        return ResponseUtil.success(articleService.getArticleVOListByCategoryId(categoryId));
    }

    /**
     * 根据作者ID获取文章的接口。
     * @param authorId 作者ID。
     * @return 指定作者ID的文章列表。
     */
    @GetMapping("/author/{authorId}")
    public ResponseEntity<Object> getArticlesByAuthorId(@PathVariable Integer authorId) {
        return ResponseUtil.success(articleService.getArticleVOListByAuthorId(authorId));
    }

    /**
     * 添加新文章的接口。
     * @param articleVO 包含文章信息的ArticleVO对象。
     * @return 成功或失败的消息。
     */
    @PostMapping("")
    public ResponseEntity<Object> addArticle(@RequestBody ArticleVO articleVO) {
        if (articleService.addArticleInfo(articleVO)) {
            return ResponseUtil.success("Article added successfully.");
        } else {
            return ResponseUtil.error("Failed to add article.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新文章的接口。
     * @param articleVO 包含更新信息的ArticleVO对象。
     * @return 成功或失败的消息。
     */
    @PutMapping("")
    public ResponseEntity<Object> updateArticle(@RequestBody ArticleVO articleVO) {
        if (articleService.updateArticleInfo(articleVO)) {
            return ResponseUtil.success("Article updated successfully.");
        } else {
            return ResponseUtil.error("Failed to update article.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除文章的接口。
     * @param articleId 文章ID。
     * @return 成功或失败的消息。
     */
    @DeleteMapping("/{articleId}")
    public ResponseEntity<Object> deleteArticle(@PathVariable Integer articleId) {
        if (articleService.deleteArticleInfo(articleId)) {
            return ResponseUtil.success("Article deleted successfully.");
        } else {
            return ResponseUtil.error("Failed to delete article.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 添加文章分类的接口。
     * @param articleCategory 包含分类信息的SystemArticleCategory对象。
     * @return 成功或失败的消息。
     */
    @PostMapping("/categories")
    public ResponseEntity<Object> addArticleCategory(@RequestBody SystemArticleCategory articleCategory) {
        if (articleService.addArticleCategory(articleCategory)) {
            return ResponseUtil.success("Category added successfully.");
        } else {
            return ResponseUtil.error("Failed to add category.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新文章分类的接口。
     * @param articleCategory 包含更新信息的SystemArticleCategory对象。
     * @return 成功或失败的消息。
     */
    @PutMapping("/categories")
    public ResponseEntity<Object> updateArticleCategory(@RequestBody SystemArticleCategory articleCategory) {
        if (articleService.updateArticleCategory(articleCategory)) {
            return ResponseUtil.success("Category updated successfully.");
        } else {
            return ResponseUtil.error("Failed to update category.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除文章分类的接口。
     * @param categoryId 分类ID。
     * @return 成功或失败的消息。
     */
    @DeleteMapping("/categories/{categoryId}")
    public ResponseEntity<Object> deleteCategory(@PathVariable int categoryId) {
        if (articleService.deleteArticleCategory(categoryId)) {
            return ResponseUtil.success("Category deleted successfully.");
        } else {
            return ResponseUtil.error("Failed to delete category.", HttpStatus.BAD_REQUEST);
        }
    }
}
