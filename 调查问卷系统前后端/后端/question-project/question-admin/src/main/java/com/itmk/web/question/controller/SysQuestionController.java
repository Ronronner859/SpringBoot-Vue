package com.itmk.web.question.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itmk.utils.ResultUtils;
import com.itmk.utils.ResultVo;
import com.itmk.web.question.entity.SysQuestion;
import com.itmk.web.question.entity.SysQuestionParn;
import com.itmk.web.question.service.SysQuestionService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 问卷控制器
 */
@RestController
@RequestMapping("/api/question")
public class SysQuestionController {
    @Autowired
    private SysQuestionService sysQuestionService;

    /**
     * 新增问卷
     * @param sysQuestion
     * @return
     */
    @PostMapping
    public ResultVo add(@RequestBody SysQuestion sysQuestion){
        boolean save = sysQuestionService.save(sysQuestion);
        if(save){
            return ResultUtils.success("新增问卷成功!");
        }
        return ResultUtils.error("新增问卷失败!");
    }

    /**
     * 编辑问卷
     */
    @PutMapping
    public ResultVo edit(@RequestBody SysQuestion sysQuestion){
        boolean b = sysQuestionService.updateById(sysQuestion);
        if(b){
            return ResultUtils.success("编辑问卷成功!");
        }
        return ResultUtils.error("编辑问卷失败!");
    }

    /**
     * 删除问卷
     * @return
     */
    @DeleteMapping("/{questionId}")
    public ResultVo delete(@PathVariable("questionId") Long questionId){
        boolean b = sysQuestionService.removeById(questionId);
        if(b){
            return ResultUtils.success("删除问卷成功!");
        }
        return ResultUtils.error("删除问卷失败!");
    }

    /**
     * 问卷列表
     */
    @GetMapping("/list")
    public ResultVo getList(SysQuestionParn sysQuestionParn){
        //构造分页对象
        IPage<SysQuestion> page = new Page<>();
        page.setSize(sysQuestionParn.getPageSize());
        page.setCurrent(sysQuestionParn.getCurrentPage());
        //构造查询条件
        QueryWrapper<SysQuestion> query = new QueryWrapper<>();
        //模糊查询
        if(StringUtils.isNotEmpty(sysQuestionParn.getQuestionTitle())){
            query.lambda().like(SysQuestion::getQuestionTitle,sysQuestionParn.getQuestionTitle());
        }
        //排序
        query.lambda().orderByAsc(SysQuestion::getQuestionOrder);
        IPage<SysQuestion> list = sysQuestionService.page(page, query);
        return ResultUtils.success("查询成功",list);
    }
}
