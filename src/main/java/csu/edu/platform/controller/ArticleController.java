package csu.edu.platform.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.utils.StringUtils;
import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.service.ArticleService;
import csu.edu.platform.service.GroupService;
import csu.edu.platform.service.Impl.OssServiceImpl;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.ArticleVO;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/articles")
public class ArticleController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private OssServiceImpl ossService;

    /**
     * 获取所有文章的接口 
     * @return 所有文章的列表 
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllArticles() {
        return ResponseUtil.success(articleService.getArticleVOList());
    }

    /**
     * 根据分类ID获取文章的接口 
     * @param articleId 文章ID 
     * @return 指定ID的文章 
     */
    @GetMapping("/{articleId}")
    public ResponseEntity<Object> getArticleByArticleId(@PathVariable int articleId) {
        return ResponseUtil.success(articleService.getArticleVOByArticleId(articleId));
    }

    /**
     * 将文章中图片的上传到图床
     * @return url
     */
    //适配别的软件写的接口
    @PostMapping("/images")
    public ResponseEntity<Map<String, Object>> uploadImage(@RequestBody Map<String, String> requestBody) {
        String imageUrl = requestBody.get("url");

        // 上传图片到 OSS
        String uploadedUrl = null;
        uploadedUrl = ossService.uploadFileFromUrl(imageUrl);

        // 构建返回的 JSON 数据
        Map<String, Object> responseData = new HashMap<>();
        responseData.put("msg", "");
        responseData.put("code", 0);
        Map<String, String> data = new HashMap<>();
        data.put("originalURL", imageUrl);
        data.put("url", uploadedUrl);
        responseData.put("data", data);

        return ResponseEntity.ok(responseData);
    }

    /**
     * 根据关键词获取文章的接口 
     * @param request 文章标题关键词 
     * @return 指定的文章列表 
     */
    @PostMapping("/search")
    public ResponseEntity<Object> searchArticle(@RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(articleService.getArticleVOListByKeyword(keyword));
    }

    /**
     * 根据分类ID获取文章的接口 
     * @param categoryId 文章分类ID 
     * @return 指定分类ID的文章列表 
     */
    @GetMapping("/categories/{categoryId}")
    public ResponseEntity<Object> getArticlesByCategoryId(@PathVariable Integer categoryId) {
        return ResponseUtil.success(articleService.getArticleVOListByCategoryId(categoryId));
    }

    /**
     * 根据作者ID获取文章的接口 
     * @param authorId 作者ID 
     * @return 指定作者ID的文章列表 
     */
    @GetMapping("/authors/{authorId}")
    public ResponseEntity<Object> getArticlesByAuthorId(@PathVariable Integer authorId) {
        return ResponseUtil.success(articleService.getArticleVOListByAuthorId(authorId));
    }

    /**
     * 添加新文章的接口
     * @param articleVO 包含文章信息的ArticleVO对象 
     * @return 成功或失败的消息 
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
     * 更新文章的接口
     * @param articleVO 包含更新信息的ArticleVO对象 
     * @return 成功或失败的消息 
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
     * 删除文章的接口
     * @param articleId 文章ID 
     * @return 成功或失败的消息 
     */
    @DeleteMapping("/{articleId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteArticle(@PathVariable Integer articleId) {
        if (articleService.deleteArticleInfo(articleId)) {
            return ResponseUtil.success("Article deleted successfully.");
        } else {
            return ResponseUtil.error("Failed to delete article.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 获取所有文章分类的接口 
     * @return 所有文章分类 
     */
    @GetMapping("/categories")
    public ResponseEntity<Object> getArticleCategories() {
        return ResponseUtil.success(articleService.getArticleCategoryList());
    }

    /**
     * 添加文章分类的接口 
     * @param articleCategory 包含分类信息的SystemArticleCategory对象 
     * @return 成功或失败的消息 
     */
    @PostMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> addArticleCategory(@RequestBody SystemArticleCategory articleCategory) {
        if (articleService.addArticleCategory(articleCategory)) {
            return ResponseUtil.success("Category added successfully.");
        } else {
            return ResponseUtil.error("Failed to add category.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 更新文章分类的接口 
     * @param articleCategory 包含更新信息的SystemArticleCategory对象 
     * @return 成功或失败的消息 
     */
    @PutMapping("/categories")
    @RoleRequired({1})
    public ResponseEntity<Object> updateArticleCategory(@RequestBody SystemArticleCategory articleCategory) {
        if (articleService.updateArticleCategory(articleCategory)) {
            return ResponseUtil.success("Category updated successfully.");
        } else {
            return ResponseUtil.error("Failed to update category.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除文章分类的接口 
     * @param categoryId 分类ID 
     * @return 成功或失败的消息 
     */
    @DeleteMapping("/categories/{categoryId}")
    @RoleRequired({1})
    public ResponseEntity<Object> deleteCategory(@PathVariable int categoryId) {
        if (articleService.deleteArticleCategory(categoryId)) {
            return ResponseUtil.success("Category deleted successfully.");
        } else {
            return ResponseUtil.error("Failed to delete category.", HttpStatus.BAD_REQUEST);
        }
    }
}
