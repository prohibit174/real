package kosta.mapper;

import java.util.List;
import java.util.Map;

import kosta.model.Board;

public interface BoardMapper {
	public int insertBoard(Board board);
	public Integer selectB_id();
	public List<Board> listBoard();
	public Board selectBoard(int b_id);
	public int updateHitBoard(int b_id);
	public int updateStep(Map<String, Integer> map);
	public int updateCheck(Board board);
	public int updateBoard(Board board);


}
