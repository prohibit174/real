package kosta.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import kosta.model.Board;
import kosta.model.Search;

public interface BoardMapper {
	public int insertBoard(Board board);
	public Integer selectB_id();
	public List<Board> listBoard(RowBounds row, Search search);
	public Board selectBoard(int b_id);
	public  int updateHit(int b_id);
	public int updateStep(Map<String, Integer> map);
	public int updateCheck(Board board);
	public int updateBoard(Board board);
	public int countBoard(Search search);
}
