package com.example.combackhome.model.homeList.dao;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.homeList.dto.HomeListDTO;


@Repository
public class HomeListImpl implements HomeListDAO {
	
	@Inject //의존관계 주입
	SqlSession sqlSession;

	@Override
	public List<HomeListDTO> listProduct() {
		return sqlSession.selectList("product.product_list");
	}
	

	@Override
	public HomeListDTO detailProduct(int pnum) {
		return sqlSession.selectOne("product.detail_product"
				, pnum);
	}

	@Override
	public void updateProduct(HomeListDTO dto) {
		sqlSession.update("product.update_product", dto);

	}

	@Override
	public void deleteProduct(int pnum) {
		sqlSession.delete("product.product_delete", pnum);

	}

	@Override
	public void insertProduct(HomeListDTO dto) {
		sqlSession.insert("product.insert", dto);

	}

	@Override
	public String fileInfo(int pnum) {
		return sqlSession.selectOne("product.fileInfo",pnum);
	}
	
	

}
