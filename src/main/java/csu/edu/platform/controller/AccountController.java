package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.ArticleService;
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
    @Autowired
    private ArticleService articleService;

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
    public ResponseEntity<Object> login(@RequestBody SystemAccount systemAccount){
        SystemAccount account = accountService.getSystemAccountByUsernameAndPassword(systemAccount.getUsername(), systemAccount.getPassword());
        if(account == null){
            return ResponseUtil.error("账号不存在", HttpStatus.UNAUTHORIZED);
        }
        Map<String, Object> map = new HashMap<>();
        map.put("accountId",account.getAccountId());
        map.put("roleId",account.getRoleId());
        String jwt = JWTUtil.generateJwt(map);
        return ResponseUtil.success(jwt);
    }
    @PostMapping("/user")
    public ResponseEntity<Object> register(@RequestBody SystemAccount systemAccount){

        if(accountService.getSystemAccountByUsername(systemAccount.getUsername()) != null){
            return ResponseUtil.error("用户名重复", HttpStatus.UNAUTHORIZED);
        }
        accountService.addSystemAccount(systemAccount);
            return ResponseUtil.success("注册成功");
    }

    @GetMapping("/accounts")
    public ResponseEntity<Object> getAllAccounts(){
        return ResponseUtil.success(accountService.getSystemAccountList());
    }
    @PutMapping("/accounts")
    public ResponseEntity<Object> updateAccount(@RequestBody SystemAccount systemAccount){
        return ResponseUtil.success(accountService.updateSystemAccount(systemAccount));
    }
   /* todo
      @DeleteMapping("/accounts/{id}")
    public ResponseEntity<Object> deleteAccount(@PathVariable int id){


    }*/
    @GetMapping("/users")
    public ResponseEntity<Object> getAllUsers(){
        return ResponseUtil.success(accountService.getSystemAccountListByRoleId(3));
    }
    @GetMapping("/merchants")
    public ResponseEntity<Object> getAllMerchants(){
        return ResponseUtil.success(accountService.getSystemAccountListByRoleId(2));
    }

    @GetMapping("/accounts/{keyword}")
    public ResponseEntity<Object> searchAccount(@PathVariable String keyword){
        return ResponseUtil.success(accountService.getSystemAccountListByKeyword(keyword));
    }
    @GetMapping("/articles/{authorId}")
    public ResponseEntity<Object> searchArticles(@PathVariable int authorId){
        return ResponseUtil.success(articleService.getArticleVOListByAuthorId(authorId));
    }


}