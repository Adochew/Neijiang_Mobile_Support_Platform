package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.entity.SystemArticleCategory;
import csu.edu.platform.service.ArticleService;
import csu.edu.platform.util.JWTUtil;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.vo.ArticleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @GetMapping("/articles")
    public ResponseEntity<Object> getAllArticles(){
        return ResponseUtil.success(articleService.getArticleVOList());
    }
    @GetMapping("/articles/{categoryId}")
    public ResponseEntity<Object> searchArticles(@PathVariable int categoryId){
        return ResponseUtil.success(articleService.getArticleVOListByCategoryId(categoryId));
    }

    @PostMapping("/articles")
    public ResponseEntity<Object> searchArticles(@RequestBody ArticleVO articleVO){
        if(articleService.addArticleVO(articleVO))
            return ResponseUtil.success();
        else return ResponseUtil.error("插入失败");
    }
    @DeleteMapping("/articles/{categoryId}")
    public ResponseEntity<Object> deleteCategory(@PathVariable int categoryId){
        if(articleService.deleteArticleCategory(categoryId))
            return ResponseUtil.success();
        else return ResponseUtil.error("删除失败");
    }
    @PutMapping("/articles")
    public ResponseEntity<Object> updateArticle(@RequestBody ArticleVO articleVO){
        if(articleService.updateArticleVO(articleVO))
            return ResponseUtil.success();
        else return ResponseUtil.error("更新失败");
    }
    @PostMapping("/categories")
    public ResponseEntity<Object> addArticlesCategory(@RequestBody SystemArticleCategory articleCategory){
        if(articleService.addArticleCategory(articleCategory))
            return ResponseUtil.success();
        else return ResponseUtil.error("插入失败");
    }
    @PutMapping("/categories")
    public ResponseEntity<Object> updateArticle(@RequestBody SystemArticleCategory articleCategory){
        if(articleService.updateArticleCategory(articleCategory))
            return ResponseUtil.success();
        else return ResponseUtil.error("更新失败");
    }


}
