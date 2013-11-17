package spr.controller;

import java.net.InetAddress;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.MemberVO;

public class LogControl implements Controller {

	
	//로그인을 수행하는 컨트롤
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
		System.out.println("여긴 들어왔니?~");
		
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		
		String pwd = request.getParameter("pwd");
		

		vo = dao.getLoginData(id, pwd);

		
		
		
		if(vo!=null)
							
		mv.addObject("vo", vo);
		mv.addObject("id", vo.getId());
		mv.addObject("ip",InetAddress.getLocalHost().getHostAddress());
		mv.setViewName("members/loginok");
			System.out.println("어디가 문제야");
		return mv;

	}

}
