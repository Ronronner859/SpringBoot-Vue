package com.itmk.web.question.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
@Data  //自动生成get和set方法
@TableName("sys_question") //指明该实体对应的数据库表名是 sys_question
public class SysQuestion implements Serializable {
    //主键 自动递增
    @TableId(type = IdType.AUTO)
    private Long questionId;
    //问卷标题
    private String questionTitle;
    //问卷描述
    private String questionDesc;
    //图片路径
    private String questionImg;
    //问卷状态 0：关闭 1：调查中
    private String questionStatus;
    //序号
    private Long questionOrder;
}
