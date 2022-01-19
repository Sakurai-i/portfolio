package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MypageServlet")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// フォワード
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/WEB-INF/view/Mypage.jsp");
		dispatcher.forward(request, response);
	}
	/*
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String comment = request.getParameter("comment");
		String tag = request.getParameter("tag");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/WEB-INF/view/Mypage.jsp");
		dispatcher.forward(request, response);
	}
	*/
	
	
}
