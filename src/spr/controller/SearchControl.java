package spr.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import spr.mybatis.dao.BoardDAO;
import spr.mybatis.vo.BoardVO;
import spr.mybatis.vo.spagingtitle;
import spr.mybatis.vo.spagingwriter;

public class SearchControl implements Controller {

	public BoardDAO bdao;
	public BoardVO[] vo;
	
	
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



	public int getNowPage() {
		return nowPage;
	}



	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}



	public int getNumPerPage() {
		return numPerPage;
	}



	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}



	public int getBegin() {
		return begin;
	}



	public void setBegin(int begin) {
		this.begin = begin;
	}



	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
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



	public int getBlockPage() {
		return blockPage;
	}



	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}



	public BoardVO[] getVo() {
		return vo;
	}



	public void setVo(BoardVO[] vo) {
		this.vo = vo;
	}



	public BoardDAO getBdao() {
		return bdao;
	}



	public void setBdao(BoardDAO bdao) {
		this.bdao = bdao;
	}



	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String tab=request.getParameter("sname");
		
		String word=request.getParameter("word");
		
		System.out.println("word파라미터 안들어오나?"+"          "+word);
		
		String page = request.getParameter("nowPage");
		
		ModelAndView mv = new ModelAndView();
		
		if(tab.equals("sname")){
			
			
			
			
			
			
			totalCount = bdao.searchnamecount(word);
			
			
			
			

			
			
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

			
			spagingwriter writer=new spagingwriter();
			
			writer.setBegin(begin);
			writer.setNumPerPage(numPerPage);
			writer.setWriter(word);
			
//			String a=Integer.toString(begin).trim();
//			String b=Integer.toString(numPerPage).trim();
//			
//			
//			
//			map.put("a", a);
//			map.put("b", b);
//			map.put("writer", word);

			
			
			vo = bdao.searchwriter(writer);

			
			
			mv.addObject("vo", vo);
			mv.addObject("start", startBlock);
			mv.addObject("end", endBlock);
			mv.addObject("now", nowPage);
			mv.addObject("nowpage", nowPage);
			
			
			
			mv.setViewName("bbs/list");

			
			
			
			
			
			
		}else if(tab.equals("stitle")){
			System.out.println("들어와라 여긴 제목검색이다");
			System.out.println(tab+"=넘어온값");
			
		

			totalCount = bdao.searchtitlecount(word);

			System.out.println(totalCount+"=이건 토탈카운트");
			
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

//			HashMap<String, String> map = new HashMap<>();
//			map.put("a", begin);
//			map.put("b", numPerPage);
//			map.put("title", word);
			
			spagingtitle title=new spagingtitle();
			title.setBegin(begin);
			title.setNumPerPage(numPerPage);
			title.setTitle(word);
			

			vo = bdao.searchtitle(title);
			
			System.out.println(vo.length);
			System.out.println("for문전");
			
//			System.out.println(this.vo[0].getTitle()+"=들어있는 타이틀값");
			
			System.out.println(vo+"for문후");
			mv.addObject("vo", vo);
			mv.addObject("start", startBlock);
			mv.addObject("end", endBlock);
			mv.addObject("now", nowPage);
			mv.addObject("nowpage", nowPage);
			
			
			
			mv.setViewName("bbs/list");
			
			
			
		}
		
		
		return mv;
		
		
		
		
		
		
	}

}
