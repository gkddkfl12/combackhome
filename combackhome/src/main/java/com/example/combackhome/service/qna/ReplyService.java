package com.example.combackhome.service.qna;

import java.util.List;

import com.example.combackhome.model.qna.dto.ReplyDTO;

public interface ReplyService {
	
	public List<ReplyDTO> list(int bno);
	public int count(int bno);
	public void create(ReplyDTO dto);
}
