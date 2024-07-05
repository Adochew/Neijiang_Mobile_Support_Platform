package csu.edu.platform.service;

import csu.edu.platform.entity.SystemAccount;

public interface AccountService {
    SystemAccount getSystemAccountByAccountId(int accountId);
    SystemAccount getSystemAccountByUsernameAndPassword(String username, String password);
}


