package com.crescendo.spring.dao.Board;

import java.util.List;

import com.crescendo.spring.board.VO.BoardVO;

public interface IBoardDAO
{
	//board 게시판 목록 뿌려주기
	public List<BoardVO> viewAll();
	
	//board게시판 디테일뷰
	public BoardVO viewDetail(int seq);
	
	//board게시판 게시글 삽입
	public int insertBoard(BoardVO vo);
}
