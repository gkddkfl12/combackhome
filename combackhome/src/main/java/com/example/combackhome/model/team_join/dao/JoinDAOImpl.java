package com.example.combackhome.model.team_join.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

@Repository
public class JoinDAOImpl implements JoinDAO {
	
	@Inject
	SqlSession sqlSession;

	
	@Override
	public List<Team_joinDTO> listAll(String search_option, 
			String keyword, int start, int end) 
			throws Exception {
		Map<String,Object> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword","%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("join.listAll",map);
	}
	
	@Override
	public int countArticle(String search_option, String keyword) 
			throws Exception {
		Map<String,String> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		return sqlSession.selectOne("join.countArticle",map);
	}
	


	@Override
	public void insertMember(Team_joinDTO dto) {
		sqlSession.insert("join.insert", dto);
		

	}

	@Override
	public Team_joinDTO viewMember(String userid) {
		return sqlSession.selectOne("join.view",userid);
	}

	@Override
	public void deleteMember(String userid) {
		sqlSession.delete("join.delete", userid);

	}

	@Override
	public void updateMember(Team_joinDTO dto) {
		sqlSession.update("join.update", dto);

	}

	@Override
	public boolean checkPw(String userid, String passwd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String idcjk(String userid) {
		return sqlSession.selectOne("join.idcjk",userid);
	}
	
	@Override
	public void delete(String userid) throws Exception {
		sqlSession.delete("join.delete", userid);

	}


	@Override
	public String forgetid(String hp, String email) {
		Map<String, Object> map= new HashMap<>();
		map.put("hp", hp);
		map.put("email", email);
		return sqlSession.selectOne("join.forgetid", map);
	}

	@Override
	public int forgetPw(String userid, String name, String hp) {
		Map<String, Object> map= new HashMap<>();
		map.put("userid", userid);
		map.put("name", name);
		map.put("hp", hp);
		return sqlSession.selectOne("join.forgetPw", map);
	}

	@Override
	public void updatePw(Team_joinDTO dto) {
		sqlSession.update("join.updatePw", dto);
		
	}
	
	
}
