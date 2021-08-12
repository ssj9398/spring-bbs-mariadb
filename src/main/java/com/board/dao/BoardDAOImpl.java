package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;

	private static String namespace = "com.board.mappers.board";

	// 게시물 목록

	public List list() throws Exception {

		return sql.selectList(namespace + ".list");
	}


	public void write(BoardVO boardvo) throws Exception {
		sql.insert(namespace + ".write", boardvo);
		
	}

	public BoardVO view(int bno) throws Exception {
		return sql.selectOne(namespace+".view", bno);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
	 sql.update(namespace + ".modify", vo);
	}

}