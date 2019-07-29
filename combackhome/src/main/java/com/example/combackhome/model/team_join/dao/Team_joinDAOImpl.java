package com.example.combackhome.model.team_join.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;


@Repository
public class Team_joinDAOImpl implements Team_joinDAO {
	@Inject
	SqlSession sqlSesseion;
	
	@Override
	public boolean loginCheck(Team_joinDTO dto) {
		String name=sqlSesseion.selectOne("team.login_check", dto);
		
		return (name==null)? false: true;
	}

	@Override
	public Team_joinDTO viewMember(String userid) {
		return sqlSesseion.selectOne("team.viewMember",userid);
	}

}
