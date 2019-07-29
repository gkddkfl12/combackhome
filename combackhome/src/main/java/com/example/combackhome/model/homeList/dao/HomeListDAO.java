package com.example.combackhome.model.homeList.dao;

import java.util.List;

import com.example.combackhome.model.homeList.dto.HomeListDTO;



public interface HomeListDAO {
	
	List<HomeListDTO> listProduct();
	HomeListDTO detailProduct(int pnum);
	void updateProduct(HomeListDTO dto);
	void deleteProduct(int pnum);
	void insertProduct(HomeListDTO dto);
	String fileInfo(int pnum);
}
