package com.example.combackhome.service.admin_team_join;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.team_join.dao.JoinDAO;
import com.example.combackhome.model.team_join.dto.Team_joinDTO;

@Service
public class Admin_team_joinServiceImpl implements Admin_team_joinService {

	
	@Inject
	JoinDAO joinDao;

	

	
	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		return joinDao.countArticle(search_option, keyword);
	}


	@Override
	public void admin_team_join_delete(String userid) throws Exception {
		joinDao.delete(userid);		
	}

	@Override
	public List<Team_joinDTO> listAll(String search_option, 
			String keyword, int start, int end) 
			throws Exception {
		return joinDao.listAll(search_option,keyword,start,end);
	}

	
	
	
	

	
	
	
	
}
