package com.example.combackhome.service.admin_team_join;

import java.util.List;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;

public interface Admin_team_joinService {
	
	public List<Team_joinDTO> listAll(String search_option, String keyword, int start, int end) throws Exception;
	public int countArticle(String search_option, String keyword) throws Exception;
	public void admin_team_join_delete(String userid) throws Exception; 
	


}
