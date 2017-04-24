package kosta.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int sum =  Integer.parseInt(num1) + Integer.parseInt(num2);

		String total = num1 + "+" +  num2 + "=" + sum;
		request.setAttribute("total", total);
		
		RequestDispatcher re = request.getRequestDispatcher("/JSPFolder/addresult.jsp");
		re.forward(request, response);
	}

}
