package com.itmk.web.user.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class UserParm implements Serializable {
    //当前第几页
    private Long currentPage;
    //页容量
    private Long pageSize;
    private String username;
}
