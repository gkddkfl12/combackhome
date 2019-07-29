package com.example.combackhome.service.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.combackhome.model.cart.dao.CartsDAO;
import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.UserDTO;

@Service
public class CartsServiceIpml implements CartsService {
	
	@Inject
	CartsDAO cartDao;
	
	@Override
	public List<CartsDTO> cartMoney() {
		return cartDao.cartMoney();
	}

	@Override
	public void insert(@ModelAttribute CartsDTO dto) {
		cartDao.insert(dto);

	}

	@Override
	public List<CartsDTO> listCart(String userid) {
		return cartDao.listCart(userid);
	}

	@Override
	public void delete(int cnum) {
		cartDao.delete(cnum);

	}

	@Override
	public void deleteAll(String userid) {
		cartDao.deleteAll(userid);

	}

	@Override
	public void update(int cnum) {
		// TODO Auto-generated method stub

	}

	@Override
	public int sumMoeny(String userid) {
		return cartDao.sumMoeny(userid);
	}

	@Override
	public int countCart(String userid, int pnum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCart(String userid) {
		cartDao.updateCart(userid);

	}

	@Override
	public void modifyCart(CartsDTO dto) {
		cartDao.modifyCart(dto);

	}

	@Override
	public List<CartsDTO> getProductMenData() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserDTO> userGender() {
		return cartDao.listuser();
	}

}
