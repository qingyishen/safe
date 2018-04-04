package com.cuit.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cuit.domain.Answer;
import com.cuit.service.AnswerService;
import com.cuit.util.DateUtil;

@Controller
public class AnswerController {
	@Resource
	AnswerService as;
	
	@RequestMapping("/addAnswer")
	public String addAnswer(@PathParam("answeruser") String answeruser,
			@PathParam("topicId") int topicId,
			Answer answer,HttpServletRequest req){
			System.out.println("==调用了主题创建=="+answeruser+"||"+topicId);
			String dateString = DateUtil.getNowTime();
			answer.setTopicId(topicId);
			answer.setAnsweruser(answeruser);
			answer.setPubtime2(dateString);
			if(as.addAnswer(answer)){
				req.setAttribute("msg", "添加回复成功");
				return "redirect:/selectAllTopic2";
			}else{
				req.setAttribute("msg", "添加回复失败");
				return "error";
			}
	}
}
