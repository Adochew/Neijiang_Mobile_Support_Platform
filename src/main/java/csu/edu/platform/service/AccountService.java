package csu.edu.platform.service;

import csu.edu.platform.entity.SystemAccount;

import java.util.List;

public interface AccountService {
    SystemAccount getSystemAccountByAccountId(int accountId);
    SystemAccount getSystemAccountByUsernameAndPassword(String username, String password);
    List<SystemAccount> getSystemAccountListByKeyword(String keyword);
    List<SystemAccount> getSystemAccountList();
    List<SystemAccount> getSystemAccountListByRoleId(int roleId);
    Boolean addSystemAccount(SystemAccount systemAccount);
    Boolean updateSystemAccount(SystemAccount systemAccount);
    Boolean deleteSystemAccount(Integer accountId);
}


