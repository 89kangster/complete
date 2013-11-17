package spr.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.BoardDAO;
import spr.mybatis.dao.MemberDAO;
import spr.mybatis.vo.BoardVO;
import spr.mybatis.vo.MemberVO;

public class DelControl implements Controller {
	
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
		String seq=request.getParameter("passedseq");
			System.out.println("안들어와?"+request.getParameter("passedseq"));
		HashMap<String, String> map=new HashMap<>();
		map.put("a", "1");
		map.put("b", "0");
		map.put("c", seq);
		bdao.delbbs(map);
		
		ModelAndView mv=new ModelAndView();
//		mv.setViewName("redirect:/bbs/list.inc");
		mv.setViewName("bbs/delpost");
		return mv;
	}

}
