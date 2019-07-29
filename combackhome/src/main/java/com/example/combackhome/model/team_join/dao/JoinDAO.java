package com.example.combackhome.model.team_join.dao;

import java.util.List;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

public interface JoinDAO {


	public void deleteMember(String userid);

	void insertMember(Team_joinDTO dto);

	Team_joinDTO viewMember(String userid);

	void updateMember(Team_joinDTO dto);

	boolean checkPw(String userid, String passwd);

	String idcjk(String userid); 
	
	public void delete(String userid) throws Exception;

	public List<Team_joinDTO> listAll(String search_option, String keyword, int start, int end) throws Exception;
	
	public int countArticle(String search_option, String keyword) throws Exception;
	
	public String forgetid(String hp, String email);
	public int forgetPw(String userid, String name, String hp);
	public void updatePw(Team_joinDTO dto); 
}
