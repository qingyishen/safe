package com.cuit.service;

import com.cuit.domain.Answer;

public interface AnswerService {

	//新增回复
	Boolean addAnswer(Answer answer);

	//获取留言回复数
	int replyNum(int id);
}
