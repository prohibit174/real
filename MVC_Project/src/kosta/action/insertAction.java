package kosta.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.model.Board;
import kosta.model.BoardDao;

public class insertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		BoardDao dao = BoardDao.getInstance();
		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setWriter(request.getParameter("writer"));
		board.setContents(request.getParameter("contents"));
		
		dao.insertBoard(board);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("listAction.do");
		// 새로운 요청에 의해서 jsp로 이동해야하기 때문에 true 라고 바꾸어준다.
		
		return forward;
	}

}
