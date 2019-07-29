package com.example.combackhome.model.order.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.OrderDTO;
import com.example.combackhome.model.order.dto.UserDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	
	@Inject
	SqlSession sqlSession;
	@Override
	public List<CartsDTO> orderList(String userid) {
		return sqlSession.selectList("order.list",userid);
	}

	@Override
	public int sumMoeny(String userid) {
		return sqlSession.selectOne("order.sum", userid);
	}

	@Override
	public void deleteList(int onum) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserDTO userStatus(String userid)  {
		return sqlSession.selectOne("order.user",userid);
	}

	@Override
	public void insertOrder(OrderDTO dto) {
		sqlSession.insert("order.insertOrder",dto);

	}

	@Override
	public List<OrderDTO> orderFinal(OrderDTO dto) {
		return sqlSession.selectList("order.orderFinal", dto);
	}

	@Override
	public void onlyOrder(CartsDTO dto) {
		sqlSession.insert("order.onlyOrder", dto);
		
	}

	@Override
	public void updateCartList(String userid) {
		sqlSession.update("order.updateCartList", userid);
		
	}

	@Override
	public List<CartsDTO> cartsListFinal(String userid) {
		return sqlSession.selectList("order.cartsListFinal", userid);
	}

	@Override
	public int sumFinalMoeny(String userid) {
		return sqlSession.selectOne("order.finalSum", userid);
	}

	@Override
	public void orderInsertMember(OrderDTO dto) {
		sqlSession.insert("order.orderInsertMember", dto);
		
	}

	@Override
	public List<CartsDTO> onlyOrderList(String userid) {
		return sqlSession.selectList("order.onlyOrderList", userid);
		
	}

	@Override
	public int oSumMoeny(String userid) {
		return sqlSession.selectOne("order.oSumMoeny", userid);
	}
	
	
	@Override
	public List<CartsDTO> listO(String userid, int start, int end) {
			Map<String,Object> map=new HashMap<>();
			map.put("userid", userid);
			map.put("start", start); //맵에 자료 저장
			map.put("end", end);
		return sqlSession.selectList("order.listO",map);
	}

	@Override
	public int countArticle(String userid) {
		return sqlSession.selectOne("order.countArticle",userid);
	}
	
	@Override
	public int updateOstatus1(int cnum) {
		return sqlSession.update("order.updateOstatus1", cnum);
		
	}
	
	@Override
	public int updateOstatus2(int cnum) {
		return sqlSession.update("order.updateOstatus2", cnum);
		
	}
	
	@Override
	public int updateOstatus3(int cnum) {
		return sqlSession.update("order.updateOstatus3", cnum);
		
	}
	
	@Override
	public int updateOstatus4(int cnum) {
		return sqlSession.update("order.updateOstatus4", cnum);
		
	}
	
	@Override
	public int delete(int cnum) {
		return sqlSession.delete("order.delete", cnum);

	}


}
