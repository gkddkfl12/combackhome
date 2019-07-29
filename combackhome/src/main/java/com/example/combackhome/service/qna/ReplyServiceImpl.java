package com.example.combackhome.service.qna;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.combackhome.model.qna.dao.ReplyDAO;
import com.example.combackhome.model.qna.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Inject
	ReplyDAO replyDao;
	

	@Override
	public List<ReplyDTO> list(int bno) {
		return replyDao.list(bno);
	}

	@Override
	public int count(int bno) {
	
		return 0;
	}

	@Override
	public void create(ReplyDTO dto) {
		replyDao.create(dto);
	}

}
