package com.cuit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cuit.domain.News;
import com.cuit.service.NewsService;
import com.cuit.util.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class NewsController {
	@Resource
	NewsService ns;
	
	/**
	 * 存储新闻信息
	 */
	@RequestMapping("/writeNews")
	public String writeNews(News news,HttpServletRequest req){
			String dateString = DateUtil.getNowTime();
			news.setTime(dateString);
			this.ns.writeNews(news);
			req.setAttribute("msg", "添加新闻成功");
			return "redirect:/anews";
	}
	
	/**
	 * 后台查询所有文章
	 * @param pn
	 * @param req
	 * @return
	 */
	@RequestMapping("/anews")
	public String anews(
			@RequestParam(value="pn",defaultValue="1") Integer pn,
			HttpServletRequest req){
		try {
			PageHelper.startPage(pn, 8);
			PageHelper.orderBy("id desc");//设置为倒叙
			List<News> news = ns.selectAllNews();
			PageInfo page = new PageInfo(news);
			req.setAttribute("news", page);
			return "/admin/news/adminPageList";
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	/**
	 * 删除文章
	 * @param req
	 * @param id
	 * @return
	 */
	@RequestMapping("/deleteNewsById")
	public String deleteNewsById(HttpServletRequest req,@RequestParam(value="id")Integer id){
		System.out.println("==执行了删除==");
		if(ns.deleteNewsById(id)){
			req.setAttribute("msg", "删除文章成功");
			return "redirect:/anews";
		}else{
			return "error";
		}
		
	}
	
	/**
	 * 更新文章所需要查找id的文章
	 * @param id
	 * @param req
	 * @return
	 */
	@RequestMapping("/getNews")
	public String getNews(@RequestParam("id") int id,HttpServletRequest req){
		News news = ns.findById(id);
		req.setAttribute("news", news);
		return "/admin/news/editNews";
	}
	
	/**
	 * 更新文章
	 * @param blog
	 * @param model
	 * @param request
	 * @param attributes
	 * @return
	 */
	@RequestMapping("/updateNews")
	public String updateNews(News news,HttpServletRequest req){
		if(ns.updateNews(news)){
			news = ns.findById(news.getId());
			req.setAttribute("news", news);
			req.setAttribute("msg", "修改文章成功");
			return "redirect:/anews";
		}
		req.setAttribute("msg", "修改文章出错");
		return "error";
	}
}
