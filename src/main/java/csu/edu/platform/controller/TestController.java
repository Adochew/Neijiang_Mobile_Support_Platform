package csu.edu.platform.controller;

import csu.edu.platform.util.ResponseUtil;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @GetMapping("/no-jwt")
    private ResponseEntity<Object> test(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }
    @GetMapping("/test")
    private ResponseEntity<Object> test1(){
        return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
    }
    @GetMapping("/example")
    public String example(@RequestAttribute("accountId") Integer accountId,
                          @RequestAttribute("roleId") Integer roleId) {
        return null;
    }
}
