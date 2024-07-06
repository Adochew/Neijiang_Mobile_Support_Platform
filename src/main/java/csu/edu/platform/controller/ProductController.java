package csu.edu.platform.controller;

import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.service.ProductService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {
    @Autowired private ProductService productService;

    @GetMapping("")
    @RoleRequired({1})
    public ResponseEntity<Object> getAllProductCategories() {
        return ResponseUtil.success();
    }
}
