package csu.edu.platform.controller;

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
     * 登录接口，验证用户的用户名和密码，并生成JWT令牌。
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
        return ResponseUtil.success(jwt);
    }

    /**
     * 注册接口，注册新的系统账号。
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
     * 获取所有账户信息的接口，只有管理员角色（roleId为1）可以访问。
     * @param roleId 从请求属性中获取的角色ID
     * @return 所有系统账户的信息或权限不足的错误信息
     */
    @GetMapping("")
    public ResponseEntity<Object> getAllAccounts(@RequestAttribute Integer roleId) {
        if (roleId == 1) {
            return ResponseUtil.success(accountService.getSystemAccountList());
        } else {
            return ResponseUtil.error("Insufficient permissions.", HttpStatus.FORBIDDEN);
        }
    }

    /**
     * 更新账户信息的接口。
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
     * 删除账户的接口。
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
     * 搜索账户的接口，通过关键词搜索相关的账户信息。
     * @param keyword 搜索关键词
     * @return 符合关键词的账户信息
     */
    @GetMapping("/accounts/{keyword}")
    public ResponseEntity<Object> searchAccount(@PathVariable String keyword) {
        return ResponseUtil.success(accountService.getSystemAccountListByKeyword(keyword));
    }
}
