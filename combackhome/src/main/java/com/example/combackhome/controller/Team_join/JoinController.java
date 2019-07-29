package com.example.combackhome.controller.Team_join;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.order.dto.UserDTO;
import com.example.combackhome.model.team_join.dto.Team_joinDTO;
import com.example.combackhome.service.team_join.Join_Service;

@Controller
@RequestMapping("join/*")
public class JoinController {
	
	@Inject
	Join_Service join_Service; 
	
	@RequestMapping("btn.do")
	public String join_list() {
		return "checkout"; 
	}
	
	@RequestMapping("insert.do")
	public String insert(Team_joinDTO dto) throws Exception{
		join_Service.insertMember(dto);
		return "redirect:/team_join/login.do"; 
	}
	@RequestMapping("home.do")
	public ModelAndView home(ModelAndView mav) {
		mav.setViewName("home");
		
		return mav; 
	}

	@RequestMapping(value="/idchk", method=RequestMethod.POST)
	@ResponseBody
	public int idchk(@RequestParam String userid) {
		String idck=join_Service.idcjk(userid);
		int result=0;
		if(idck != null) {
			result=1;
		}
		return result;
	}
	
	@RequestMapping("update.do")
	public String update(HttpSession session, Team_joinDTO dto) {
		String userid=(String)session.getAttribute("userid");
		dto.setUserid(userid);
		join_Service.updateMember(dto);
		return "redirect:/join/personalEidt.do";
	}
	
	@RequestMapping("personalEidt.do")
	public ModelAndView personalEidt(HttpSession session, ModelAndView mav) {
		String userid=(String)session.getAttribute("userid");
		Team_joinDTO dto=new Team_joinDTO();
		dto.setUserid(userid);
		dto=join_Service.viewMember(userid);
		mav.setViewName("personalPage");
		mav.addObject("dto", dto);
		return mav;
	}
	@RequestMapping("deleteMember.do")
	public String delete(HttpSession session, Team_joinDTO dto) {
		String userid =(String)session.getAttribute("userid");
		dto.setUserid(userid);
		join_Service.deleteMember(userid);
		session.invalidate();
		return "home";
	}
	
	//아이디 비밀번호 찾기
		@RequestMapping("findidPage.do")
		public String idpage() {
			return "id";
		}
		@RequestMapping("findid.do")
		public ModelAndView findid(String hp, String email,ModelAndView mav) {
			String userid=join_Service.forgetid(hp, email);
			int result =0;
			if(userid!=null) {
				result=1;
				mav.setViewName("id");
				mav.addObject("result", result);
				mav.addObject("userid",userid);
			}else {
				mav.setViewName("id");
				mav.addObject("result", result);
			}
			return mav;
		}
		//비밀번호 찾기
		@RequestMapping("forgetPw.do")
		public String forgetPw() {
			return "pw";
		}
		@RequestMapping("findPw.do")
		public ModelAndView findPw(String userid, String name, String hp, ModelAndView mav ) {
			int result = join_Service.forgetPw(userid,name, hp);
			if(result==1) {
				Team_joinDTO dto=new Team_joinDTO();
				dto.setUserid(userid);
				mav.setViewName("changePw");
				mav.addObject("mesaage", result);
				mav.addObject("userid",dto.getUserid());
			}else {
				mav.setViewName("pw");
				mav.addObject("mesaage", 2);
			}
			return mav;
		}
		@RequestMapping("updatePw.do")
			public String updatePw(Team_joinDTO dto) {
				join_Service.updatePw(dto);
				return "redirect:/team_join/login.do" ;
			}
}
