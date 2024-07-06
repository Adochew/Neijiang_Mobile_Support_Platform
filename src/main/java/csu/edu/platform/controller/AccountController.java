package csu.edu.platform.controller;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.ArticleService;
import csu.edu.platform.service.UserService;
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
    private UserService userService;

    @PostMapping("/token")
    public ResponseEntity<Object> login(@RequestBody SystemAccount systemAccount){
        SystemAccount account = accountService.getSystemAccountByUsernameAndPassword(systemAccount.getUsername(), systemAccount.getPassword());
        if(account == null){
            return ResponseUtil.error("Invalid username or password.", HttpStatus.BAD_REQUEST);
        }
        Map<String, Object> map = new HashMap<>();
        map.put("accountId",account.getAccountId());
        map.put("roleId",account.getRoleId());
        String jwt = JWTUtil.generateJwt(map);
        return ResponseUtil.success(jwt);
    }

    @PostMapping("/accounts")
    public ResponseEntity<Object> register(@RequestBody SystemAccount systemAccount){
        if(accountService.getSystemAccountByAccountId(systemAccount.getAccountId()) != null){
            return ResponseUtil.error("Account registration failed: Duplicate account ID.", HttpStatus.BAD_REQUEST);
        }

//        if(systemAccount.getRoleId() == 3){
//            userService.addUserInfo()
//        }


        if (accountService.addSystemAccount(systemAccount)){
            return ResponseUtil.success("Account registration successful.");
        }else {
            return ResponseUtil.error("Account registration failed.", HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/accounts")
    public ResponseEntity<Object> getAllAccounts(@RequestAttribute("roleId") Integer roleId){
        if(roleId == 1){
            return ResponseUtil.success(accountService.getSystemAccountList());
        }else {
            return ResponseUtil.error("Insufficient permissions.", HttpStatus.FORBIDDEN);
        }
    }

    @PutMapping("/accounts")
    public ResponseEntity<Object> updateAccount(@RequestBody SystemAccount systemAccount){
        if(accountService.updateSystemAccount(systemAccount)){
            return ResponseUtil.success("Account updated successfully.");
        } else {
            return ResponseUtil.error("Failed to update account.", HttpStatus.BAD_REQUEST);
        }
    }

//    TODO
//    @DeleteMapping("/accounts/{id}")
//    public ResponseEntity<Object> deleteAccount(@PathVariable int id){
//
//    }

    @GetMapping("/accounts/{keyword}")
    public ResponseEntity<Object> searchAccount(@PathVariable String keyword){
        return ResponseUtil.success(accountService.getSystemAccountListByKeyword(keyword));
    }
}