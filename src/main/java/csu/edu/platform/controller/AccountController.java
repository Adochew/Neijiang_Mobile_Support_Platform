package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.OssService;
import csu.edu.platform.util.JWTUtil;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;


@RestController
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;

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

    @PostMapping("/token")
    private ResponseEntity<Object> login(@RequestBody SystemAccount systemAccount){
        SystemAccount account = accountService.getSystemAccountByUsernameAndPassword(systemAccount.getUsername(), systemAccount.getPassword());
        if(account == null){
            return ResponseUtil.error("message", HttpStatus.UNAUTHORIZED);
        }
        Map<String, Object> map = new HashMap<>();
        map.put("accountId",account.getAccountId());
        map.put("roleId",account.getRoleId());
        String jwt = JWTUtil.generateJwt(map);
        return ResponseUtil.success(jwt);
    }
}