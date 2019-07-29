package com.example.combackhome.model.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.memo.dto.MemoDTO;
import com.example.combackhome.model.shop.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject //의존관계 주입
	SqlSession sqlSession;
	
	@Override
	public List<ProductDTO> listProduct() {
		return sqlSession.selectList("product.product_list");
	}

	@Override
	public List<ProductDTO> listAll(String search_option, 
			String keyword, int start, int end) 
			throws Exception {
		Map<String,Object> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword","%"+keyword+"%");
		map.put("start", start); //맵에 자료 저장
		map.put("end", end);
		return sqlSession.selectList("product.listAll",map);
	}
	
	@Override
	public int countArticle(String search_option, String keyword) 
			throws Exception {
		Map<String,String> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		return sqlSession.selectOne("product.countArticle",map);
	}
	
	@Override
	public ProductDTO read(int pnum) throws Exception {
		return sqlSession.selectOne("product.read", pnum);
	}
	

	@Override
	public ProductDTO detailProduct(int pnum) {
		return sqlSession.selectOne("product.detail_product"
				, pnum);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		sqlSession.update("product.update_product", dto);

	}

	@Override
	public void deleteProduct(int pnum) {
		sqlSession.delete("product.product_delete", pnum);

	}

	@Override
	public void insertProduct(ProductDTO dto) {
		sqlSession.insert("product.insert", dto);

	}

	@Override
	public String fileInfo(int pnum) {
		return sqlSession.selectOne("product.fileInfo",pnum);
	}
	
	@Override
	public List<MemoDTO> memo(int pnum) {
		return sqlSession.selectList("product.memo", pnum);
	}


	@Override
	public void memo2(MemoDTO dto) {
		 sqlSession.insert("product.insert2", dto);
	}


	@Override
	public List<MemoDTO> list(int pnum) {
		return sqlSession.selectList("product.memo",pnum);
	}

}
