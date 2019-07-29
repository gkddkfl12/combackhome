package com.example.combackhome.service.qna;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.combackhome.model.qna.dao.QnaDAO;
import com.example.combackhome.model.qna.dto.QnaDTO;

@Service 
public class QnaServiceImpl implements QnaService {
	
	@Inject
	QnaDAO boardDao;

	@Override
	public void deleteFile(String fullName) {
		boardDao.deleteFile(fullName);
	}


	

	@Transactional
	@Override
	public void create(QnaDTO dto) throws Exception {
	
		boardDao.create(dto);
	
		String[] files=dto.getFiles();
		if(files == null) return;
	}

	@Override
	public QnaDTO read(int bno) throws Exception {
		return boardDao.read(bno);
	}

    @Transactional 
	@Override
	public void update(QnaDTO dto) throws Exception {
    	boardDao.update(dto);
    	String[] files=dto.getFiles();
    	if(files==null) return;

	}

    @Transactional
	@Override
	public void delete(int bno) throws Exception {
    	
    	boardDao.delete(bno);
	}

	@Override
	public List<QnaDTO> listAll(String search_option, 
			String keyword, int start, int end) 
			throws Exception {
		return boardDao.listAll(search_option,keyword,start,end);
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) 
			throws Exception {
		long update_time=0;
		if(session.getAttribute("update_time_"+bno)!=null) {
			
			update_time=
					(long)session.getAttribute("update_time_"+bno);
		}
		long current_time=System.currentTimeMillis();
		
		if(current_time - update_time > 5*1000) {
			
			boardDao.increaseViewcnt(bno);
			
			session.setAttribute("update_time_"+bno, current_time);
		}
	}

	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		return boardDao.countArticle(search_option, keyword);
	}

}
