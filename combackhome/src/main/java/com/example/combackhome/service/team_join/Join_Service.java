package com.example.combackhome.service.team_join;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

public interface Join_Service {
	public void insertMember(Team_joinDTO dto); 
	public Team_joinDTO viewMember(String userid); 
	public void deleteMember(String userid); 
	public void updateMember(Team_joinDTO dto); 
	public boolean checkPw(String userid, String passwd);
	public String idcjk(String userid); 
	public String forgetid(String hp, String email);
	public int forgetPw(String userid, String name, String hp);
	public void updatePw(Team_joinDTO dto); 
}
