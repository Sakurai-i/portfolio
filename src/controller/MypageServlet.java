package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GetMoneyBookLogic;
import model.MoneyBook;
import model.PostMoneyBookLogic;


@WebServlet("/MypageServlet")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		//リストを取得して、リクエストスコープに保存
		GetMoneyBookLogic gmbLogic = new GetMoneyBookLogic();
		List<MoneyBook> mbList = gmbLogic.execute();
		request.setAttribute("mbList", mbList);
		
		//フォワード
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/view/Mypage.jsp");
		dispatcher.forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//リクエストパラメータの取得
		String date = request.getParameter("date");
		int price = Integer.parseInt(request.getParameter("price"));
		String comment = request.getParameter("comment");
		String tag = request.getParameter("tag");
		String photo = request.getParameter("photo");
		
		//リストに追加
		MoneyBook mb = new MoneyBook(date,price,comment,tag,photo);
		PostMoneyBookLogic pmbLogic = new PostMoneyBookLogic();
		pmbLogic.execute(mb);
		
		//リストを取得して、リクエストスコープに保存
		GetMoneyBookLogic gmbLogic = new GetMoneyBookLogic();
		List<MoneyBook> mbList = gmbLogic.execute();
		request.setAttribute("mbList", mbList);
		
		//フォワード
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/WEB-INF/view/Mypage.jsp");
		dispatcher.forward(request, response);
	}
}
