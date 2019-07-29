package com.example.combackhome.service.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.memo.dto.MemoDTO;
import com.example.combackhome.model.shop.dao.ProductDAO;
import com.example.combackhome.model.shop.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	ProductDAO productDao;

	@Override
	public List<ProductDTO> listProduct() {
		return productDao.listProduct();
	}
	
	@Override
	public List<ProductDTO> listAll(String search_option, 
			String keyword, int start, int end) 
			throws Exception {
		return productDao.listAll(search_option,keyword,start,end);
	}

	
	
	@Override
	public ProductDTO read(int pnum) throws Exception {
		return productDao.read(pnum);
	}
	
	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		return productDao.countArticle(search_option, keyword);
	}
	


	@Override
	public ProductDTO detailProduct(int pnum) {
		return productDao.detailProduct(pnum);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		productDao.updateProduct(dto);

	}

	@Override
	public void deleteProduct(int pnum) {
		productDao.deleteProduct(pnum);

	}

	@Override
	public void insertProduct(ProductDTO dto) {
		productDao.insertProduct(dto);

	}

	@Override
	public String fileInfo(int pnum) {
		return productDao.fileInfo(pnum);
	}

	@Override
	public List<MemoDTO> memo(int pnum) {
		
		return productDao.memo(pnum);
	}



	@Override
	public void memo2(MemoDTO dto) {
          productDao.memo2(dto);		
	}



	@Override
	public List<MemoDTO> list(int pnum) {
		return productDao.list(pnum);
	}

	

}
