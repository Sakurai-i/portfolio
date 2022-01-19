package model;

import dao.MoneyBookDAO;

public class PostMoneyBookLogic {
	public void execute (MoneyBook mb) {
		MoneyBookDAO dao = new MoneyBookDAO();
		dao.create(mb);		
	}
}