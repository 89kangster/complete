package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.zipcodeVO;

public class dbControl implements Controller {
	
	
	//우편번호 검색을 하는 컨트롤
	public MemberDAO dao;
	
	public zipcodeVO[] vo;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mv=new ModelAndView();
		
		
		vo= dao.getZip(request.getParameter("dong"));
		
		
		
		
		mv.addObject("vo", vo);
		
		mv.setViewName("members/zipbox2");
		
		
		return mv;
	}


	public zipcodeVO[] getVo() {
		return vo;
	}


	public void setVo(zipcodeVO[] vo) {
		this.vo = vo;
	}
	
	

}
