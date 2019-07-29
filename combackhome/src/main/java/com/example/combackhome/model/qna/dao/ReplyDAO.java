package com.example.combackhome.model.qna.dao;

import java.util.List;

import com.example.combackhome.model.qna.dto.ReplyDTO;

public interface ReplyDAO {
	public List<ReplyDTO> list(int bno);
	public int count(int bno);
	public void create(ReplyDTO dto);
}
