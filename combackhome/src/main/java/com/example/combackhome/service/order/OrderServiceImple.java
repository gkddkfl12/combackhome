package com.example.combackhome.service.order;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dao.OrderDAO;
import com.example.combackhome.model.order.dto.OrderDTO;
import com.example.combackhome.model.order.dto.UserDTO;

@Service
public class OrderServiceImple implements OrderService {

	@Inject
	OrderDAO orderDao;
	@Override
	public List<CartsDTO> orderList(String userid) {
		return orderDao.orderList(userid);
	}

	@Override
	public int sumMoeny(String userid) {
		return orderDao.sumMoeny(userid);
	}

	@Override
	public void deleteList(int onum) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserDTO userStatus(String userid) {
		return orderDao.userStatus(userid);
	}

	@Override
	public void insertOrder(OrderDTO dto) {
		orderDao.insertOrder(dto);

	}

	@Override
	public List<OrderDTO> orderFinal(OrderDTO dto) {
		return orderDao.orderFinal(dto);
	}

	@Override
	public void onlyOrder(CartsDTO dto) {
		orderDao.onlyOrder(dto);
		
	}

	@Override
	public void updateCartList(String userid) {
		orderDao.updateCartList(userid);
		
	}

	@Override
	public List<CartsDTO> cartsListFinal(String userid) {
		return orderDao.cartsListFinal(userid);
	}

	@Override
	public int sumFinalMoeny(String userid) {
		return orderDao.sumFinalMoeny(userid);
	}

	@Override
	public void orderInsertMember(OrderDTO dto) {
		orderDao.orderInsertMember(dto);
		
	}

	@Override
	public List<CartsDTO> onlyOrderList(String userid) {
		return orderDao.onlyOrderList(userid);
	}

	@Override
	public int oSumMoeny(String userid) {
		return orderDao.oSumMoeny(userid);
	}

	public List<CartsDTO> listO(String userid, int start, int end) {
		return orderDao.listO(userid,start,end);
	}

	@Override
	public int countArticle(String userid) {
		return orderDao.countArticle(userid);
	}
	
	@Override
	public int updateOstatus1(int cnum) {
		return orderDao.updateOstatus1(cnum);
		
	}
	
	@Override
	public int updateOstatus2(int cnum) {
		return orderDao.updateOstatus2(cnum);
		
	}
	
	@Override
	public int updateOstatus3(int cnum) {
		return orderDao.updateOstatus3(cnum);
		
	}
	
	@Override
	public int updateOstatus4(int cnum) {
		return orderDao.updateOstatus4(cnum);
		
	}
	
	@Override
	public int delete(int cnum) {
		return orderDao.delete(cnum);		
	}
	

}
