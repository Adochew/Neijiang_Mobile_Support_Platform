package csu.edu.platform.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("system_account")
public class SystemAccount {
    @TableId(value = "account_id", type = IdType.AUTO)
    private Integer accountId;
    private String username;
    private String password;
    private Integer roleId;
}
