package com.example.combackhome.model.qna.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.combackhome.model.qna.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Inject
	SqlSession sqlSession;

	
	@Override
	public List<ReplyDTO> list(int bno) {
		return sqlSession.selectList("qnareply.listReply", bno);
	}

	@Override
	public int count(int bno) {
		
		return 0;
	}

	
	@Override
	public void create(ReplyDTO dto) {
		sqlSession.insert("qnareply.insertReply", dto);
	}

}
