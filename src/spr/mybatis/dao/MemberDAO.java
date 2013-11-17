package spr.mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import spr.mybatis.vo.MemberVO;
import spr.mybatis.vo.zipcodeVO;

public class MemberDAO {
	private SqlSessionTemplate ss;

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}

	public int insertMember(MemberVO vo) {

		int cnt = ss.insert("join.addmember", vo);
		return cnt;

	}

	public zipcodeVO[] getZip(String db) {
		zipcodeVO[] ar = null;
		List<zipcodeVO> list = ss.selectList("join.zipcode", db);
		ar = new zipcodeVO[list.size()];
		list.toArray(ar);
		return ar;

	}

	public MemberVO getLoginData(String id, String pwd) {

		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		MemberVO vo = ss.selectOne("join.login", map);

		return vo;

	}

	public boolean idChk(String id) {
		MemberVO v = null;
		List<MemberVO> list = ss.selectList("join.idchk", id);

		if (list.size() > 0) {
			return true;
		} else
			return false;

	}

	
	public MemberVO find(HashMap<String, String> map) {

		MemberVO v = ss.selectOne("join.find", map);

		return v;

	}
	

	public MemberVO mailchk(String mail) {

		MemberVO v = ss.selectOne("join.mailchk", mail);
		
		return v;

	}

}
