package com.example.combackhome.model.order.dao;

import java.util.List;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.OrderDTO;
import com.example.combackhome.model.order.dto.UserDTO;

public interface OrderDAO {
	public List<CartsDTO> orderList(String userid);//카트에서 넘어온 주문 목록
	public int sumMoeny(String userid);//구매 목록 합계
	public void deleteList(int onum);//구매 목록 삭제
	public UserDTO userStatus(String userid);//주문자 정보
	public void insertOrder(OrderDTO dto);//주문 확정
	public List<OrderDTO> orderFinal(OrderDTO dto);
	public void onlyOrder(CartsDTO dto);
	public void updateCartList(String userid);
	public List<CartsDTO> cartsListFinal(String userid);
	public int sumFinalMoeny(String userid);
	public void orderInsertMember(OrderDTO dto);
	public List<CartsDTO> onlyOrderList(String userid);
	public int oSumMoeny(String userid);
	public List<CartsDTO> listO(String userid, int start, int end);
	public int countArticle(String userid);
	int updateOstatus1(int cnum);
	int updateOstatus2(int cnum);
	int updateOstatus3(int cnum);
	int updateOstatus4(int cnum);
	int delete(int cnum);
}
