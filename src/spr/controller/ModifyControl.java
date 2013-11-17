package spr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.BoardDAO;
import spr.mybatis.vo.BoardVO;

public class ModifyControl implements Controller {
	
public BoardDAO bdao;
	
	public BoardVO vo;

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
		String seqparam = request.getParameter("seq");

		int seq = Integer.parseInt(seqparam);

		vo = bdao.getView(seq);
		ModelAndView mv = new ModelAndView();
		
		
		mv.addObject("vo", vo);
		
		mv.setViewName("bbs/modify");
		return mv;

		
	}

}
