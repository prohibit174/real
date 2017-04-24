package kosta.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.model.Board;
import kosta.model.BoardDao;

public class UpdateAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		String num = request.getParameter("seq");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		int seq = 1;

		//seq값이 없으면 넘버포멘 익셉션이 발생할수 있음
		if (num != null) {
		   seq = Integer.parseInt(num);
		}
		BoardDao dao = BoardDao.getInstance();
		Board board = dao.detailBoard(seq);
		board.setTitle(title);
		board.setWriter(writer);
		
		dao.updateBoard(board);
		ActionForward forward = new ActionForward();

		forward.setRedirect(true);
		forward.setPath("updateAction.jsp");
		return forward;
	}

}
