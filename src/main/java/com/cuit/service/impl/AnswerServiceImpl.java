package com.cuit.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cuit.dao.AnswerMapper;
import com.cuit.domain.Answer;
import com.cuit.service.AnswerService;

@Service
public class AnswerServiceImpl implements AnswerService{
	@Resource
	AnswerMapper am;
	
	@Override
	public Boolean addAnswer(Answer answer) {
		return am.addAnswer(answer);
	}

	@Override
	public int replyNum(int id) {
		return am.replyNum(id);
	}

}
