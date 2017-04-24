package kosta.mapper;

import java.util.List;

import kosta.model.Board;
import kosta.model.Search;

public interface BoardMapper {
	int insertBoard(Board board); // 메소드 명이 id 로 쓰인다.
	List<Board> listBoard(Search search);
	int updateBoard(Board board);
	Board detailBoard(int seq);
	int deleteBoard(Board board);
}
