package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.persistence.SystemAccountMapper;
import csu.edu.platform.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("accountService")
public class AccountServiceImpl implements AccountService {
    @Autowired
    private SystemAccountMapper systemAccountMapper;

    public SystemAccount getSystemAccountByAccountId(int accountId) {
        return systemAccountMapper.selectById(accountId);
    }

    public SystemAccount getSystemAccountByUsernameAndPassword(String username, String password) {
        QueryWrapper<SystemAccount> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username).eq("password",password);
        return systemAccountMapper.selectOne(queryWrapper);
    }
}
