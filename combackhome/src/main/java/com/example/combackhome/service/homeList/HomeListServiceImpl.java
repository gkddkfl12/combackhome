package com.example.combackhome.service.homeList;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.homeList.dao.HomeListDAO;
import com.example.combackhome.model.homeList.dto.HomeListDTO;


@Service
public class HomeListServiceImpl implements HomeListService {
	
	@Inject
	HomeListDAO productDao;

	@Override
	public List<HomeListDTO> listProduct() {
		return productDao.listProduct();
	}
	


	@Override
	public HomeListDTO detailProduct(int pnum) {
		return productDao.detailProduct(pnum);
	}

	@Override
	public void updateProduct(HomeListDTO dto) {
		productDao.updateProduct(dto);

	}

	@Override
	public void deleteProduct(int pnum) {
		productDao.deleteProduct(pnum);

	}

	@Override
	public void insertProduct(HomeListDTO dto) {
		productDao.insertProduct(dto);

	}

	@Override
	public String fileInfo(int pnum) {
		return productDao.fileInfo(pnum);
	}
	
	

}
