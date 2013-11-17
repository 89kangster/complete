package spr.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.MemberVO;

public class Control implements Controller {

	//회원가입 실행후 db에 insert
	public MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			
		System.out.println("컴온");
		ModelAndView mv=new ModelAndView();
		MemberVO vo=new MemberVO();
	    Date date=new Date();
	    request.setCharacterEncoding("utf-8");
	    
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setEmail(request.getParameter("email"));
		
		
		vo.setAddress(request.getParameter("address01"));
		vo.setPhone(request.getParameter("phone01")+request.getParameter("phone02")+request.getParameter("phone03"));
		vo.setStatus("1");
		vo.setMember_date(date);
		
		int cnt=dao.insertMember(vo);
		
		if(cnt==1)
			mv.addObject("ok",cnt);
			System.out.println("가입처리값="+cnt);
			mv.setViewName("members/joinok");
			return mv;
		
	}
	
	
	
}
