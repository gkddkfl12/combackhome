package com.example.combackhome.controller.admin_team_join;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;
import com.example.combackhome.service.admin_team_join.Admin_team_joinService;
import com.example.combackhome.service.qna.Pager;

@Controller
@RequestMapping("admin_team_join/*")
public class admin_team_joinController {
	
	@Inject
	Admin_team_joinService admin_team_joinService; 
	

	@RequestMapping("list.do")
	public ModelAndView list(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		
		int count=admin_team_joinService.countArticle(search_option,keyword);
		
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<Team_joinDTO> list=
				admin_team_joinService.listAll(search_option,keyword,start,end);
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);
		map.put("count", list.size());
		map.put("pager", pager);
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("admin_team_join/admin_team_join");
		mav.addObject("map", map);
		return mav; 
	}
	
	
	
	
	

	@RequestMapping("admin_team_join_delete.do")
	public String delete(String userid, Team_joinDTO dto) throws Exception {
		
		admin_team_joinService.admin_team_join_delete(userid);
		return "redirect:/admin_team_join/list.do"; 
	}
}
