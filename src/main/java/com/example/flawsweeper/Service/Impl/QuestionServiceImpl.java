package com.example.flawsweeper.Service.Impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.flawsweeper.Entity.ErrorQuestion;
import com.example.flawsweeper.Mapper.QuestionMapper;
import com.example.flawsweeper.Service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, ErrorQuestion> implements QuestionService {
    @Autowired

    private QuestionMapper mapper;
    @Transactional
    public Map<String, Object> getQuestionMessage(int questionid){

        return mapper.getQuestionMessage(questionid);
    }

    @Override
    public boolean addQuestion(ErrorQuestion errorQuestion) {
        //添加错题后，获取错题的id
        boolean flag = mapper.addQuestion(errorQuestion);
        return flag;
    }

    @Override
    public ErrorQuestion getQuestionClass(int questionid) {
        return mapper.getQuestionClass(questionid);
    }

    @Override
    public boolean updateinrecycle( int questionid) {
        return mapper.updateinrecycle(questionid);
    }

    @Override
    public boolean updateQuestion(ErrorQuestion errorQuestion) {
        return mapper.updateQuestion(errorQuestion);
    }

    @Override
    public boolean deleteCollect(int questionid) {
        return mapper.updateIncollect(questionid);
    }

    @Override
    public boolean intocollect(int questionid) {
        return mapper.Intocollect(questionid);
    }

    @Override
    public boolean recoverQuestion(int questionid) {
        return mapper.recoverQuestion(questionid);
    }
}
