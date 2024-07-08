package csu.edu.platform.controller;

import csu.edu.platform.entity.UserInfo;
import csu.edu.platform.service.OssService;
import csu.edu.platform.service.UserService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@RestController
public class TestController {

    @Autowired
    private OssService ossService;

    @GetMapping("/no-jwt")
    private ResponseEntity<Object> test(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }
    @GetMapping("/test")
    private ResponseEntity<Object> test1(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }

    @GetMapping("/token")
    public void example() {

    }
}
