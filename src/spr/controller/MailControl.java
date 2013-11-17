package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.MemberVO;

public class MailControl implements Controller {
	public MemberVO vo;

	public MemberDAO dao;

	public MemberVO getVo() {
		return vo;
	}

	public void setVo(MemberVO vo) {
		this.vo = vo;
	}

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		vo=new MemberVO();
		
		
		vo= dao.mailchk(request.getParameter("setid"));
		
		ModelAndView mv=new ModelAndView();
		
		if(vo!=null){
			//데이터가 들어왔기때문에 중복이다.
			mv.addObject("v", "f");
			mv.setViewName("members/postmailchk");
			
			return mv;
		}else
			
			mv.addObject("v", "t");
			mv.setViewName("members/postmailchk");
			
			return mv;
		
		
		
		
	}

}
