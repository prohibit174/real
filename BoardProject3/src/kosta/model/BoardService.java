package kosta.model;

import java.util.HashMap;
import java.util.List;

public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao dao;
	
	public static BoardService getInstance(){
		dao = BoardDao.getInstance();
		return service;
	}
	
	public int insertBoardService(Board board){
		
		//답변글일때
		if(board.getB_id() != 0){
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("b_step", board.getB_step());
			map.put("b_ref", board.getB_ref());
			
			dao.updateStep(map);
			board.setB_id(dao.selectB_id()+1);	//새로운 b_id
			board.setB_step(board.getB_step()+1); //나의 b_ref
			board.setB_level(board.getB_level()+1); //나의 b_ref
			
			
		}else{//원본글
			board.setB_id(dao.selectB_id()+1);	//새로운 b_id
			board.setB_ref(dao.selectB_id()+1); //나의 b_ref
		}
		return  dao.insertBoard(board);
	}
	
	public List<Board> listBoardService(){
		return dao.listBoard();
	}	
	public Board selectBoardService(int b_id){		
		return dao.selectBoard(b_id);
	}
	public int updateHitBoardService(int b_id){
		return  dao.updateHitBoard(b_id);
	}	
	public int updateCheckService(Board board){
		return  dao.updateCheck(board);
	}
	public int updateBoardService(Board board){
		return  dao.updateBoard(board);
	}

}
