package com.example.combackhome.controller.Team_join;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.team_join.dto.Team_joinDTO;
import com.example.combackhome.service.homeList.HomeListService;
import com.example.combackhome.service.team_join.Team_joinService;

@Controller
@RequestMapping("team_join/*")
public class Team_joinController {
	
	@Inject
	HomeListService homeListService;
	
	@Inject
	Team_joinService team_joinService;
	//로깅을 위한 변수
	private static final Logger logger=LoggerFactory.getLogger(Team_joinController.class);
	@RequestMapping("login.do")
	public ModelAndView login() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("home"); //전달할데이터
		mav.addObject("list", homeListService.listProduct()); 
		return mav;
	}
	@RequestMapping("login_check.do")
	public ModelAndView login_check(Team_joinDTO dto, HttpSession session) {
		//로그인이 성공 true, 실패시 false
		boolean result=team_joinService.loginCheck(dto, session);
		ModelAndView mav=new ModelAndView();
		if(result) {
			mav.setViewName("home");//뷰의 이름
		}else {
			mav.setViewName("home");
			//뷰에 전달할 값
			mav.addObject("message","error");
		}
		mav.addObject("list", homeListService.listProduct());
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		//세션 초기화
		team_joinService.logout(session);
		//페이지 이동 login.jsp로 이동
		mav.addObject("list", homeListService.listProduct());
		mav.setViewName("home");
		mav.addObject("message","logout");
		return mav;
	}
}