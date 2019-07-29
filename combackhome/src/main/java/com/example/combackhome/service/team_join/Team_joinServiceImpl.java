package com.example.combackhome.service.team_join;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.team_join.dao.Team_joinDAO;
import com.example.combackhome.model.team_join.dto.Team_joinDTO;

@Service
public class Team_joinServiceImpl implements Team_joinService {

	@Inject
	Team_joinDAO team_joinDao;
	@Override
	public boolean loginCheck(Team_joinDTO dto, HttpSession session) {
		boolean result=team_joinDao.loginCheck(dto);
		if(result) {//로그인 성공
			//세션변수값 저장
			Team_joinDTO dto2=viewMember(dto.getUserid());
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", dto2.getName());
			
		}
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		
		session.invalidate();

	}

	@Override
	public Team_joinDTO viewMember(String userid) {
		return team_joinDao.viewMember(userid);
	}

}
