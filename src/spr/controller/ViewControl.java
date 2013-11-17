package spr.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.BoardDAO;
import spr.mybatis.dao.ReplyDAO;
import spr.mybatis.vo.BoardVO;
import spr.mybatis.vo.ReplyVO;

public class ViewControl implements Controller {
	
	
	public BoardDAO bdao;
	public ReplyDAO rdao;
	
	public ReplyDAO getRdao() {
		return rdao;
	}

	public void setRdao(ReplyDAO rdao) {
		this.rdao = rdao;
	}

	public BoardVO vo;
	public ReplyVO	rv;

	public ReplyVO getRv() {
		return rv;
	}

	public void setRv(ReplyVO rv) {
		this.rv = rv;
	}

	public BoardDAO getBdao() {
		return bdao;
	}

	public void setBdao(BoardDAO bdao) {
		this.bdao = bdao;
	}

	public BoardVO getVo() {
		return vo;
	}

	public void setVo(BoardVO vo) {
		this.vo = vo;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		HashMap<String, Integer> map=new HashMap<>();
		
		String seqparam=request.getParameter("seq");
		
		String re=request.getParameter("re");
		
		String nowPage=request.getParameter("nowPage");
		
		ModelAndView mv=new ModelAndView();
		
		int seq=Integer.parseInt(seqparam);
		
		int orihit=bdao.orihit(seq)+1;
		
		map.put("seq", seq);
		map.put("hit", orihit);
		bdao.hit(map);
		
		
		if(re==null){
			System.out.println("원글눌럿을ㄸ");
			vo=bdao.getView(seq);
			
			
			
			
			mv.addObject("vo", vo);
			mv.addObject("vopwd", vo.getPwd());
			mv.addObject("now", nowPage);
			mv.addObject("filecheck", "ok");
			
			
		
			mv.setViewName("bbs/view");
			
		}
		if(re!=null){
			System.out.println("답변글눌럿을떄?");
			rv=rdao.getView(seq);
			mv.addObject("vo", rv);
			mv.addObject("vopwd", rv.getPwd());
			mv.addObject("now", nowPage);
			mv.addObject("filecheck", "no");
			mv.setViewName("bbs/view");
			
		}
		
		
		return mv;
	}

}
