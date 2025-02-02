package csu.edu.platform.controller;

import csu.edu.platform.annotation.RoleRequired;
import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.entity.UserInfo;
import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.UserService;
import csu.edu.platform.util.JWTUtil;
import csu.edu.platform.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.alibaba.fastjson.JSON;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/accounts")
public class AccountController {

    @Autowired
    private AccountService accountService;
    @Autowired
    private UserService userService;

    /**
     * 登录接口，验证用户的用户名和密码，并生成JWT令牌 
     * @param systemAccount 包含用户名和密码的SystemAccount对象
     * @return 成功时返回JWT令牌，失败时返回错误信息
     */
    @PostMapping("/tokens")
    public ResponseEntity<Object> login(@RequestBody SystemAccount systemAccount) {
        // 验证用户名和密码
        SystemAccount account = accountService.getSystemAccountByUsernameAndPassword(systemAccount.getUsername(), systemAccount.getPassword());
        if (account == null) {
            return ResponseUtil.error("Invalid username or password.", HttpStatus.BAD_REQUEST);
        }

        // 创建JWT令牌
        Map<String, Object> map = new HashMap<>();
        map.put("accountId", account.getAccountId());
        map.put("roleId", account.getRoleId());
        String jwt = JWTUtil.generateJwt(map);

        Map<String, Object> result = new HashMap<>();
        result.put("token", jwt);
        result.put("roleId", account.getRoleId());
        result.put("accountId", account.getAccountId());
        return ResponseUtil.success(result);
    }

    /**
     * 注册接口，注册新的系统账号 
     * @param systemAccount 包含注册信息的SystemAccount对象
     * @return 注册成功或失败的信息
     */
    @PostMapping("")
    public ResponseEntity<Object> register(@RequestBody SystemAccount systemAccount) {
        // 检查用户名是否重复
        if (accountService.getSystemAccountByUsername(systemAccount.getUsername()) != null) {
            return ResponseUtil.error("Account registration failed: Duplicate username.", HttpStatus.BAD_REQUEST);
        }

        // 添加新账号
        if (accountService.addSystemAccount(systemAccount)) {
            // 如果注册的账号是用户角色（roleId为3），则添加用户信息
            if (systemAccount.getRoleId() == 3) {
                SystemAccount account = accountService.getSystemAccountByUsername(systemAccount.getUsername());
                if (userService.addUserInfo(new UserInfo(account.getAccountId(), account.getUsername()))) {
                    return ResponseUtil.success("Account registration successful.");
                }
                // TODO: 处理用户信息添加失败的情况
            }
            return ResponseUtil.success("Account registration successful.");
        }
        return ResponseUtil.error("Account registration failed.", HttpStatus.BAD_REQUEST);
    }

    /**
     * 获取所有账户信息的接口 
     * @return 所有系统账户的信息 
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllAccounts() {
            return ResponseUtil.success(accountService.getSystemAccountList());
    }

    /**
     * 更新账户信息的接口 
     * @param systemAccount 包含更新信息的SystemAccount对象
     * @return 更新成功或失败的信息
     */
    @PutMapping("/accounts")
    public ResponseEntity<Object> updateAccount(@RequestBody SystemAccount systemAccount) {
        if (accountService.updateSystemAccount(systemAccount)) {
            return ResponseUtil.success("Account updated successfully.");
        } else {
            return ResponseUtil.error("Failed to update account.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 删除账户的接口 
     * @param account_id 要删除的账户ID
     * @return 删除成功或失败的信息
     */
    @DeleteMapping("/accounts/{account_id}")
    public ResponseEntity<Object> deleteAccount(@PathVariable Integer account_id) {
        if (accountService.deleteSystemAccount(account_id)) {
            return ResponseUtil.success("Account deleted successfully.");
        } else {
            return ResponseUtil.error("Failed to delete account.", HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 搜索账户的接口，通过关键词搜索相关的账户信息 
     * @param request 搜索关键词
     * @return 符合关键词的账户信息
     */
    @PostMapping("/search")
    public ResponseEntity<Object> searchAccount(@RequestBody String request) {
        String keyword = JSON.parseObject(request).getString("keyword");
        return ResponseUtil.success(accountService.getSystemAccountListByKeyword(keyword));
    }
}
