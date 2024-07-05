package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.service.OssService;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/account")
public class AccountController {
    @GetMapping("/no-jwt")
    private ResponseEntity<Object> test(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }
    @GetMapping("/test")
    private ResponseEntity<Object> test1(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }

    @PostMapping("/token")
    private ResponseEntity<Object> login(@RequestBody SystemAccount systemAccount){
        return null;
    }
}