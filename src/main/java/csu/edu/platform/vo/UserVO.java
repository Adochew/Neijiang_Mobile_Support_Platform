package csu.edu.platform.vo;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class UserVO {
    private Integer userId;
    private Integer accountId;
    private String name;
    private String email;
    private String phone;
    private LocalDateTime createdAt;

}
