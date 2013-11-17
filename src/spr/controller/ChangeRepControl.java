package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.ReplyDAO;

public class ChangeRepControl implements Controller {
	
	

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String seq=request.getParameter("repno");
		String title=request.getParameter("reptitle");
		
		System.out.println("답글번호"+seq);
		System.out.println("답글제목"+title);
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("seq", seq);
		mv.addObject("title", title);
		mv.setViewName("bbs/reply");
		
		
		return mv;
	}
	
	
	

}
