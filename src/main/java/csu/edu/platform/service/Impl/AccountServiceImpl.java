package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.persistence.MerchantInfoMapper;
import csu.edu.platform.persistence.SystemAccountMapper;
import csu.edu.platform.persistence.UserInfoMapper;
import csu.edu.platform.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public SystemAccount getSystemAccountByUsername(String username){
        QueryWrapper<SystemAccount> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return systemAccountMapper.selectOne(queryWrapper);
    }

    public List<SystemAccount> getSystemAccountList() {
        QueryWrapper<SystemAccount> queryWrapper = new QueryWrapper<>();
        return systemAccountMapper.selectList(queryWrapper);
    }

    public List<SystemAccount> getSystemAccountListByRoleId(int roleId) {
        QueryWrapper<SystemAccount> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("role_id", roleId);
        return systemAccountMapper.selectList(queryWrapper);
    }

    public List<SystemAccount> getSystemAccountListByKeyword(String keyword) {
        QueryWrapper<SystemAccount> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("username", keyword);
        return systemAccountMapper.selectList(queryWrapper);
    }

    public Boolean addSystemAccount(SystemAccount systemAccount) {
        return systemAccountMapper.insert(systemAccount)!=0;
    }

    public Boolean updateSystemAccount(SystemAccount systemAccount) {
        //TODO check roleId
        return systemAccountMapper.updateById(systemAccount) != 0;
    }

    public Boolean deleteSystemAccount(Integer accountId) {
        return systemAccountMapper.deleteById(accountId) != 0;
    }
}
