package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;

public class ChkControl implements Controller {
	
	//아이디 중복검사를 실행하는 컨트롤
	
	public MemberDAO dao;

	public MemberDAO getDao() {
		return dao;
	}

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		System.out.println("컴온");
		
		arg0.setCharacterEncoding("utf-8");
		String id=arg0.getParameter("setid");
		ModelAndView mv=new ModelAndView();
		
		boolean ch=dao.idChk(id);
		
		if(ch){
			mv.addObject("t","t");
			mv.setViewName("members/idchkpost");
			return mv;
			
		}else
			mv.addObject("f","f");
		mv.setViewName("members/idchkpost");
		
		return mv;	
		 
		
	}

}
