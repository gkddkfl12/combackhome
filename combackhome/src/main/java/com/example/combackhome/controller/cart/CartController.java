package com.example.combackhome.controller.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.service.cart.CartsService;

@Controller
@RequestMapping("carts/*")
public class CartController {
	@Inject
	CartsService cartsService;
	

	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		Map<String, Object> map= new HashMap<>();
		//세션 변수 확인
		String userid=(String)session.getAttribute("userid");
		
		if(userid !=null) {//로그인 한 경우에
			List<CartsDTO> list = cartsService.listCart(userid);
			System.out.println("객수:"+list.size());
			//장바구니 합계 계산
			int sumMoney = cartsService.sumMoeny(userid);
			//배송료 계산
			int fee =sumMoney >=30000 ? 0:2500;//합계가 3만원 이상이면 배송료 0원
			map.put("sumMoney",sumMoney);
			map.put("fee",fee);
			map.put("sum",sumMoney+fee);//총액금액 계산	
			map.put("list",list);
			map.put("count",list.size());
			mav.setViewName("cart");
			mav.addObject("map",map);
			return mav;
		}else {//로그인 하지 않은 경우
			mav.setViewName("home");
			return mav;
			//return new ModelAndView("home", "",null);
		}
		
	}
	@RequestMapping("update.do")
	public String update(@RequestParam int[] camount,
			@RequestParam int[] cnum, HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		if(userid !=null) {//로그인 상태라면
			for(int i=0; i<cnum.length; i++) {
				if(camount[i] ==0) {//수량이 0이면 레코드 삭제
					cartsService.delete(cnum[i]);
				} else {//0이 아니면
					CartsDTO dto=new CartsDTO();
					dto.setUserid(userid);
					dto.setCnum(cnum[i]);
					dto.setCamount(camount[i]);
					cartsService.modifyCart(dto);
				}
			}
		}
		return "redirect:/carts/list.do";
	}
	@RequestMapping("deleteAll.do")
	public String deleteAll(HttpSession session) {
		//세션 변수 조회(로그인 여부 검사)
		String userid=(String)session.getAttribute("userid");
		System.out.println(userid);
		if(userid != null) {//로그인한 상태이면
			//장바구니를 비우고
			cartsService.deleteAll(userid);
		}
		//장바구니 목록으로 이동
		return "redirect:/carts/list.do";
	}
	@RequestMapping("delete.do")
	public String delete(@RequestParam int cnum, HttpSession session) {
		if(session.getAttribute("userid")!=null) {
			cartsService.delete(cnum);
		}
		return "redirect:/carts/list.do";
	}
	@RequestMapping("insert.do")//세부적인 url mapping
	public String insert(HttpSession session, @ModelAttribute CartsDTO dto) {
		String userid =(String)session.getAttribute("userid");
		dto.setUserid(userid);
		cartsService.insert(dto);
		return "redirect:/carts/list.do";
	}//insert()
	
	@RequestMapping("Odelete.do")
	public String Odelete(@RequestParam int cnum, HttpSession session) {
		if(session.getAttribute("userid")!=null) {
			cartsService.delete(cnum);
		}
		return "redirect:/order/list.do";
	}
	@RequestMapping("OOdelete.do")
	public String OOdelete(@RequestParam int cnum, HttpSession session) {
		if(session.getAttribute("userid")!=null) {
			cartsService.delete(cnum);
		}
		return "redirect:/order/onlyOrder.do";
	}
	@RequestMapping("OFdelete.do")
	public String OFdelete(@RequestParam int cnum, HttpSession session) {
		if(session.getAttribute("userid")!=null) {
			cartsService.delete(cnum);
		}
		return "redirect:/order/orderfinal.do";
	}
}
