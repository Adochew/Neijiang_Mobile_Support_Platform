package csu.edu.platform.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
public class UserVO {
    private Integer userId;
    private Integer accountId;
    private String name;
    private String email;
    private String phone;
    private LocalDateTime createdAt;

}
