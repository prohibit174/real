package kosta.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FormServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String address = request.getParameter("address");

		// 데이터 값이 여러개 일 때는 배열에 담는다 ^_^
		String[] symbol = request.getParameterValues("symbol");

		String str = name + "님의 주소는" + address + "입니다.";

		request.setAttribute("message", str);
		String str2 = "";
		for (int i = 0; i < symbol.length; i++) {
			str2 += symbol[i] + " , ";
		}
		request.setAttribute("message2", str2);

		RequestDispatcher re = request.getRequestDispatcher("/JSPFolder/result.jsp");
		re.forward(request, response);

	}

}
