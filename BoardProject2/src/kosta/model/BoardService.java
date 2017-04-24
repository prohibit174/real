package kosta.model;

import java.util.List;

public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao dao;
	
	public static BoardService getInstance(){
		dao = BoardDao.getInstance();
		return service;
	}
	
	public int insertBoardService(Board board){
		//board객체에 기존번호에 +1시킨다.
		board.setB_id(dao.selectB_id()+1);
		int re = dao.insertBoard(board);
		
		return re;
	}
	
	public List<Board>listBoardService(){
		return dao.listBoard();
	}
	
	public Board selectBoardService(int b_id){
		return dao.selectBoard(b_id);
	}

}
