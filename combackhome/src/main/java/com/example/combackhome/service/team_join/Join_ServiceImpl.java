package com.example.combackhome.service.team_join;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.team_join.dao.JoinDAO;
import com.example.combackhome.model.team_join.dto.Team_joinDTO;

@Service
public class Join_ServiceImpl implements Join_Service {
	
	@Inject
	JoinDAO joinDao;



	@Override
	public void insertMember(Team_joinDTO dto) {
		joinDao.insertMember(dto);

	}

	@Override
	public Team_joinDTO viewMember(String userid) {
		return joinDao.viewMember(userid);
	}

	@Override
	public void deleteMember(String userid)  {
		joinDao.deleteMember(userid);

	}

	@Override
	public void updateMember(Team_joinDTO dto) {
		joinDao.updateMember(dto);

	}

	@Override
	public boolean checkPw(String userid, String passwd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String idcjk(String userid) {
		return joinDao.idcjk(userid);
	}
	@Override
	public String forgetid(String hp, String email) {
		return joinDao.forgetid(hp,email);
	}

	@Override
	public int forgetPw(String userid, String name, String hp) {
		return joinDao.forgetPw(userid, name, hp);
	}

	@Override
	public void updatePw(Team_joinDTO dto) {
		joinDao.updatePw(dto);
		
	}

}
