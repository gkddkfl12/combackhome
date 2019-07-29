package com.example.combackhome.model.shop.dao;

import java.util.List;

import com.example.combackhome.model.memo.dto.MemoDTO;
import com.example.combackhome.model.shop.dto.ProductDTO;


public interface ProductDAO {
	
	List<ProductDTO> listProduct();
	public List<ProductDTO> listAll(String search_option, String keyword, int start, int end) throws Exception;
	public int countArticle(String search_option, String keyword) throws Exception;
	public ProductDTO read(int pnum) throws Exception;
	ProductDTO detailProduct(int pnum);
	void updateProduct(ProductDTO dto);
	void deleteProduct(int pnum);
	void insertProduct(ProductDTO dto);
	String fileInfo(int pnum);
	List<MemoDTO> memo(int pnum);
	void memo2(MemoDTO dto);
	List<MemoDTO> list(int pnum);
}
