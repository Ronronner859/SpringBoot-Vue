package com.itmk.web.user.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 系统用户实体类
 */
@Data  //自动生成get和set方法
@TableName("sys_user")  //指定SysUser对应的表名 sys_user
public class SysUser implements Serializable {
    //主键 ,注解：指明主键，然后是自动递增
    @TableId(type = IdType.AUTO)
    private Long userId;
    //登录账户
    private String username;
    //登录密码
    private String password;
    //电话
    private String phone;
    //邮箱
    private String email;
}
