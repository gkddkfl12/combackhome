package com.example.combackhome.service.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.combackhome.model.qna.dto.QnaDTO;

public interface QnaService {
	public void deleteFile(String fullName); 
	public void create(QnaDTO dto) throws Exception; 
	public QnaDTO read(int bno) throws Exception;
	public void update(QnaDTO dto) throws Exception; 
	public void delete(int bno) throws Exception;
	public List<QnaDTO> listAll(String search_option, String keyword, int start, int end) throws Exception;
	public void increaseViewcnt(int bno, HttpSession session) throws Exception; 
	public int countArticle(String search_option, String keyword) throws Exception;
}
