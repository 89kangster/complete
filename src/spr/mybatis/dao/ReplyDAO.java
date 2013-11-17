package spr.mybatis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import spr.mybatis.vo.BoardVO;
import spr.mybatis.vo.ReplyVO;

public class ReplyDAO {
	
	private SqlSessionTemplate ss;
	
	public SqlSessionTemplate getSs() {
		return ss;
	}

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}
	
	
	public void repinsert(ReplyVO vv){
		
		ss.insert("rep.write",vv);
	}
	
	public ReplyVO[] allrepl(){
		ReplyVO[] vv=null;
		List<ReplyVO> list=ss.selectList("rep.all");
		vv=new ReplyVO[list.size()];
		list.toArray(vv);
		return vv;
	}
	
	
	public ReplyVO getView(int param){
		ReplyVO vo=null;
		
		vo=ss.selectOne("rep.view", param);
		
		return vo;
	}
	
	
	

}
