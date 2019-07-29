package com.example.combackhome.service.cart;

import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.UserDTO;
import com.example.combackhome.model.shop.dto.ProductDTO;

public interface CartsService {
	public List<CartsDTO> cartMoney();
	public void insert(@ModelAttribute CartsDTO dto);
	public List<CartsDTO> listCart(String userid);
	public void delete(int cnum);
	public void deleteAll(String userid);
	public void update(int cnum);
	public int sumMoeny(String userid);
	public int countCart(String userid, int pnum);
	public void updateCart(String userid);
	public void modifyCart(CartsDTO dto);
	public List<CartsDTO> getProductMenData();
	public List<UserDTO> userGender();
}
