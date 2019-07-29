package com.example.combackhome.model.cart.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.UserDTO;

@Repository
public class CartDAOImpl implements CartsDAO {

	@Inject	
	SqlSession sqlSession;
	
	@Override
	public List<CartsDTO> cartMoney() {
		return sqlSession.selectList("carts.cart_money");
	}

	@Override
	public void insert(@ModelAttribute CartsDTO dto) {
		sqlSession.insert("carts.insert", dto);
	}

	@Override
	public List<CartsDTO> listCart(String userid) {
		return sqlSession.selectList("carts.cartList",userid);
	}

	@Override
	public void delete(int cnum) {
		sqlSession.delete("carts.delete", cnum);

	}

	@Override
	public void deleteAll(String userid) {
		sqlSession.delete("carts.deleteAll", userid);

	}

	@Override
	public void update(int cnum) {
		// TODO Auto-generated method stub

	}

	@Override
	public int sumMoeny(String userid) {
		return sqlSession.selectOne("carts.sumMoney", userid);
	}

	@Override
	public int countCart(String userid, int pnum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCart(String userid) {
		sqlSession.update("carts.updateCart", userid);

	}

	@Override
	public void modifyCart(CartsDTO dto) {
		sqlSession.update("carts.modifyCart", dto);

	}

	@Override
	public List<UserDTO> listuser() {
		return sqlSession.selectList("carts.usergender");
	}

}
