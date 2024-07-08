package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@TableName("system_account")
public class SystemAccount {
    @Schema(example = "1")
    @TableId(value = "account_id", type = IdType.AUTO)
    private Integer accountId;
    @NotBlank(message = "username cannot be blank")
    @Size(max = 255, message = "username cannot exceed 255 characters")
    @Schema(example = "admin")
    private String username;
    @NotBlank(message = "Password cannot be blank")
    @Schema(example = "admin")
    @Size(max = 255, message = "Password cannot exceed 255 characters")
    private String password;
    @Schema(description = "1：admin 2：merchant 3：user", example = "3")
    @NotNull(message = "Role Id can't be null")
    private Integer roleId;
}
