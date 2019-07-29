package com.example.combackhome.service.team_join;

import javax.servlet.http.HttpSession;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

public interface Team_joinService {
	public boolean loginCheck(Team_joinDTO dto, HttpSession session);
	public void logout(HttpSession session); 
	public Team_joinDTO viewMember(String userid);
}
