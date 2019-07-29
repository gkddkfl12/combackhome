package com.example.combackhome.model.team_join.dao;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

public interface Team_joinDAO {

	public boolean loginCheck(Team_joinDTO dto);
	public 	Team_joinDTO viewMember(String userid);
}
