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

public class ListControl implements Controller {

	public int totalCount;
	public int totalPage;
	public int nowPage;
	public int numPerPage = 7;
	public int begin;
	public int status = 1;
	public int startBlock;
	public int endBlock;
	public int blockPage = 5;

	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getStartBlock() {
		return startBlock;
	}

	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}

	public int getEndBlock() {
		return endBlock;
	}

	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

	public BoardDAO bdao;
	public ReplyDAO rdao;

	public int getNumPerPage() {
		return numPerPage;
	}

	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public ReplyDAO getRdao() {
		return rdao;
	}

	public void setRdao(ReplyDAO rdao) {
		this.rdao = rdao;
	}

	public int getNowPage() {
		return nowPage;
	}

	public BoardDAO getBdao() {
		return bdao;
	}

	public void setBdao(BoardDAO bdao) {
		this.bdao = bdao;
	}

	public BoardVO[] vo;
	public ReplyVO[] rv;

	public ReplyVO[] getRv() {
		return rv;
	}

	public void setRv(ReplyVO[] rv) {
		this.rv = rv;
	}

	public BoardVO[] getVo() {
		return vo;
	}

	public void setVo(BoardVO[] vo) {
		this.vo = vo;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String page = request.getParameter("nowPage");

		totalCount = bdao.getTotalCount(status);

		
		
		if((totalCount%numPerPage)!=0){
			totalPage = (int) (totalCount / numPerPage)+1;
		}else if((totalCount%numPerPage)==0){
			totalPage = (int) (totalCount / numPerPage);
		}
			
			

		if (page == null || page.equals("0")) {
			nowPage = 1;
		} else if (page != null) {
			nowPage = Integer.parseInt(page);
		}

		if (nowPage > totalPage)
			nowPage = totalPage;

		begin = (nowPage - 1) * numPerPage;

		startBlock = ((nowPage - 1) / blockPage) * blockPage +1;
		endBlock = (startBlock + blockPage - 1);
		
		if (endBlock > totalPage)
			endBlock = totalPage;

		HashMap<String, Integer> map = new HashMap<>();
		map.put("a", begin);
		map.put("b", numPerPage);
		map.put("c", 1);

		vo = bdao.getList(map);
		rv=rdao.allrepl();

		ModelAndView mv = new ModelAndView();

		mv.addObject("vo", vo);
		mv.addObject("rv", rv);
		mv.addObject("start", startBlock);
		mv.addObject("end", endBlock);
		mv.addObject("now", nowPage);
		mv.addObject("nowpage", nowPage);
		
		
		
		mv.setViewName("bbs/list");

		return mv;
	}

}
