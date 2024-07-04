package csu.edu.platform;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("csu.edu.platform.persistence")
public class NeijiangMobileSupportPlatformApplication {

    public static void main(String[] args) {
        SpringApplication.run(NeijiangMobileSupportPlatformApplication.class, args);
    }

}
