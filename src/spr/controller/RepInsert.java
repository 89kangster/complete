package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.ReplyDAO;
import spr.mybatis.vo.ReplyVO;

public class RepInsert implements Controller {
	
	
	public ReplyDAO rdao;

	public ReplyDAO getRdao() {
		return rdao;
	}

	public void setRdao(ReplyDAO rdao) {
		this.rdao = rdao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String seq=request.getParameter("seq");
		String writer=request.getParameter("writer");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String ip=request.getParameter("ip");
		String pwd=request.getParameter("pwd");
		String status=request.getParameter("status");
		ReplyVO rv=new ReplyVO();
		rv.setSeq(seq);
		rv.setWriter(writer);
		rv.setTitle(title);
		rv.setContent(content);
		rv.setIp(ip);
		rv.setStatus(status);
		rv.setPwd(pwd);
		
		rdao.repinsert(rv);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("redirect:/bbs/list.inc");
		return mv;
	}
	
	
	

}
