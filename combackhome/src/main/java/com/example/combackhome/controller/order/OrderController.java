package com.example.combackhome.controller.order;

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
import com.example.combackhome.model.order.dto.OrderDTO;
import com.example.combackhome.model.order.dto.UserDTO;
import com.example.combackhome.service.order.OrderService;
import com.example.combackhome.service.order.Pager;
import com.example.combackhome.service.shop.ProductService;

@Controller
@RequestMapping("order/*")
public class OrderController {

	@Inject
	OrderService orderService;
	
	@Inject
	ProductService productService;
	
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		Map<String, Object> map= new HashMap<>();
		//세션 변수 확인
		String userid=(String)session.getAttribute("userid");
		
		if(userid !=null) {//로그인 한 경우에
			List<CartsDTO> list = orderService.orderList(userid);
			//System.out.println("객수:"+list.size());
			//장바구니 합계 계산
			int sumMoney = orderService.sumMoeny(userid);
			//배송료 계산
			int fee =sumMoney >=30000 ? 0:2500;//합계가 3만원 이상이면 배송료 0원
			map.put("sumMoney",sumMoney);
			map.put("fee",fee);
			map.put("sum",sumMoney+fee);//총액금액 계산	
			map.put("list",list);
			map.put("count",list.size());
			mav.setViewName("order");
			mav.addObject("map",map);
			/* mav.addObject("dto",orderService.userStatus(userid)); */
			return mav;
		}else {//로그인 하지 않은 경우
			mav.setViewName("home");
			return mav;
			//return new ModelAndView("home", "",null);
		}
	}

	
	  @RequestMapping("onlyOrder.do") 
	  public String insert(HttpSession session, @ModelAttribute CartsDTO dto) { 
		  String userid =(String)session.getAttribute("userid");
		  dto.setUserid(userid);
		  orderService.onlyOrder(dto);
		  return "redirect:/order/onlyOrderpage.do";
	  }
	@RequestMapping("onlyOrderpage.do")
	public ModelAndView onlyOrderpage(HttpSession session,ModelAndView mav) {
		String userid =(String)session.getAttribute("userid"); 
		Map<String,Object> map= new HashMap<>();
		CartsDTO dto=new CartsDTO();
		List<CartsDTO> list = orderService.onlyOrderList(userid);
		int sumMoney = orderService.oSumMoeny(userid);
		int fee =sumMoney >=30000 ? 0:2500;//합계가 3만원 이상이면 배송료 0원
		map.put("list", list);
		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("sum", sumMoney+fee);
		mav.setViewName("onlyOrder");
		mav.addObject("map", map);
		mav.addObject("dto",orderService.userStatus(userid));
		System.out.println("" + list);
		return mav;
	}
	 	
	/*
	 * @RequestMapping("orderInsertMember.do") public String
	 * orderInsertMember(HttpSession session, OrderDTO dto) { String userid
	 * =(String)session.getAttribute("userid"); dto.setUserid(userid);
	 * dto.setName("name"); dto.setOme("ome"); orderService.orderInsertMember(dto);
	 * return "redirect:/order/orderUpdateCarts.do";
	 */
	/* } */
	@RequestMapping("orderUpdateCarts.do")
	public String orderUpdateCarts(HttpSession session, CartsDTO dto) {
		String userid =(String)session.getAttribute("userid");
		orderService.updateCartList(userid);
		return "redirect:/order/orderfinal.do";
	}
	
	@RequestMapping("orderfinal.do")
	public ModelAndView orderfinal(HttpSession session, ModelAndView mav ) {
		String userid =(String)session.getAttribute("userid");
		Map<String,Object> map = new HashMap<>();
		List<CartsDTO> CartsfinalList = orderService.cartsListFinal(userid);
		int sumMoney = orderService.sumFinalMoeny(userid);
		int fee =sumMoney >=30000 ? 0:2500;
		map.put("CartsfinalList", CartsfinalList);
		map.put("count", CartsfinalList.size());
		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("sum", sumMoney+fee);
		mav.setViewName("orderFinal");
		mav.addObject("map",map);
		return mav;
	}
	
	
	
	@RequestMapping("listO.do")
	public ModelAndView listO(HttpSession session, ModelAndView mav, @RequestParam(defaultValue="1") int curPage) {
		String userid =(String)session.getAttribute("userid");
		Map<String,Object> map = new HashMap<>();
		UserDTO user =orderService.userStatus(userid);
		int count=orderService.countArticle(userid);
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<CartsDTO> listO = orderService.listO(userid,start,end);
		map.put("listO", listO);
		map.put("count", listO.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("user", user);
		mav.setViewName("deliveryA");
		mav.addObject("map",map);
		return mav;
	}
	
	@RequestMapping("updateOstatus1.do")
	public String updateOstatus1(int cnum) {
		orderService.updateOstatus1(cnum);
		return "redirect:/order/listO.do";
	}
	
	@RequestMapping("updateOstatus2.do")
	public String updateOstatus2(int cnum) {
		orderService.updateOstatus2(cnum);
		return "redirect:/order/listO.do";
	}
	
	@RequestMapping("updateOstatus3.do")
	public String updateOstatus3(int cnum) {
		orderService.updateOstatus3(cnum);
		return "redirect:/order/listO.do";
	}
	
	@RequestMapping("updateOstatus4.do")
	public String updateOstatus4(int cnum) {
		orderService.updateOstatus4(cnum);
		return "redirect:/order/listO.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int cnum) {
		
		orderService.delete(cnum);
		return "redirect:/order/listO.do"; 
	}
	
	
}