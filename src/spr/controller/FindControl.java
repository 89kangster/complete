package spr.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.MemberVO;

public class FindControl implements Controller {
	
	
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
		System.out.println("여기옴?");
		System.out.println(request.getParameter("findname"));
		System.out.println(request.getParameter("findemail"));
		
		HashMap<String, String> map=new HashMap<>();
		map.put("name", request.getParameter("findname"));
		map.put("email", request.getParameter("findemail"));
		
		vo= dao.find(map);
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("members/findpost");
		
		return mv;
		
	}
	
	
	

}
