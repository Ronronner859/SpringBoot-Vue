package com.itmk.web.question.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.question.entity.SysQuestion;
import com.itmk.web.question.mapper.SysQuestionMapper;
import com.itmk.web.question.service.SysQuestionService;
import org.springframework.stereotype.Service;

@Service
public class SysQuestionServiceImpl extends ServiceImpl<SysQuestionMapper, SysQuestion> implements SysQuestionService {
}
