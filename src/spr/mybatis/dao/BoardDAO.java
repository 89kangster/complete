package spr.mybatis.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import spr.mybatis.vo.BoardVO;
import spr.mybatis.vo.spagingtitle;
import spr.mybatis.vo.spagingwriter;

public class BoardDAO {
	
	private SqlSessionTemplate ss;
		
	public SqlSessionTemplate getSs() {
		return ss;
	}

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}



	public int getTotalCount(int status){
		
		List<BoardVO> list=ss.selectList("board.total",status);
		 
		return list.size();
		
	}
	
	public BoardVO[] getList(HashMap<String, Integer> map){
		BoardVO[] vo=null;
		List<BoardVO> list=ss.selectList("board.list",map);
		vo=new BoardVO[list.size()];
		list.toArray(vo);
		return vo;
		
	}
	
	public BoardVO getView(int param){
		BoardVO vo=null;
		
		vo=ss.selectOne("board.view", param);
		
		return vo;
	}
	
	
	public void writebbs(BoardVO vo){
		
		ss.insert("board.write", vo);
	}
	
	public void delbbs(HashMap<String, String> map){
		ss.update("board.del", map);
	}
	
	public void edit(BoardVO vo){
		ss.update("board.edit",vo);
	}
	
	public void hit(HashMap<String, Integer> map){
		ss.update("board.hit",map);
	}
	
	public int orihit(int seq){
		
		int orihit=ss.selectOne("board.orihit", seq);
		
		return orihit;
		
	}
	
	public int count(){
		int a=ss.selectOne("board.count");
		return a;
		
	}
	
	public BoardVO[] searchwriter(spagingwriter w){
		BoardVO[] vo=null;
		List<BoardVO> list=ss.selectList("board.searchname",w);
		vo=new BoardVO[list.size()];
		list.toArray(vo);
		return vo;
	}
	
	public int searchnamecount(String a){
		
		int size=ss.selectOne("board.searchnamecount",a);
		
		return size;
	}
	
	
	public BoardVO[] searchtitle(spagingtitle t){
		BoardVO[] vo=null;
		List<BoardVO> list=ss.selectList("board.searchtitle",t);
		vo=new BoardVO[list.size()];
		list.toArray(vo);
		return vo;
	}
	
	
	public int searchtitlecount(String a){
		
		int size=ss.selectOne("board.searchtitlecount",a);
		return size;
	}
	

}








