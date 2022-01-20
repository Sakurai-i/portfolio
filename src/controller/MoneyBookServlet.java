package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MoneyBook;
import model.PostMoneyBookLogic;


@WebServlet("/MoneyBookServlet")
public class MoneyBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		//フォワード
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/view/MoneyBook.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String date =  request.getParameter("date");
		int price = Integer.parseInt(request.getParameter("price"));
		String comment = request.getParameter("comment");
		String tag = request.getParameter("tag");
		String photo = request.getParameter("photo");
					
		//入力内容をリストに追加
		MoneyBook mb = new MoneyBook(date, 0, comment,tag,photo);
		PostMoneyBookLogic pmbLogic = new PostMoneyBookLogic();
		pmbLogic.execute(mb);
		
		//家計簿入力画面にフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/MoneyBook.jsp");
		dispatcher.forward(request, response);
	}
}