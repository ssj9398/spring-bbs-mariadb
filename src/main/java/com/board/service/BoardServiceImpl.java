package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {

		return dao.list();
	}

	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
		
	}

	public BoardVO view(int bno) throws Exception {
		return dao.view(bno);
	}

}