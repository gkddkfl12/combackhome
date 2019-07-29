package com.example.combackhome.service.homeList;

import java.util.List;

import com.example.combackhome.model.homeList.dto.HomeListDTO;


public interface HomeListService {
	List<HomeListDTO> listProduct();
	HomeListDTO detailProduct(int pnum);
	void updateProduct(HomeListDTO dto);
	void deleteProduct(int pnum);
	void insertProduct(HomeListDTO dto);
	String fileInfo(int pnum);
}
