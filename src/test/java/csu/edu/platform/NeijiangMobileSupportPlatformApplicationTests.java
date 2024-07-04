package csu.edu.platform;

import csu.edu.platform.entity.SystemAccount;
import csu.edu.platform.persistence.SystemAccountMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class NeijiangMobileSupportPlatformApplicationTests {

    @Autowired
    private SystemAccountMapper systemAccountMapper;

    @Test
    void contextLoads() {
        List<SystemAccount> systemAccounts = systemAccountMapper.selectList(null);
        System.out.println(systemAccounts);
    }

}
