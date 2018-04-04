package com.cuit.dao;

import com.cuit.domain.Answer;

public interface AnswerMapper {
	Boolean addAnswer(Answer answer);
	
	int replyNum(int id);
}
