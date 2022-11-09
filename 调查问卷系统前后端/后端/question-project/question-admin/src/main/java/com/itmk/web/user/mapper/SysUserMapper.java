package com.itmk.web.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itmk.web.user.entity.SysUser;

/**
 * 用户的数据访问层
 *  继承 mybatis plus 的 BaseMapper，
 *  可以使用他提供的通用的增删改查的方法
 *
 */
public interface SysUserMapper extends BaseMapper<SysUser> {
}
