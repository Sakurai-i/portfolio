package model;

import java.util.List;

import dao.MoneyBookDAO;

public class GetMoneyBookLogic {
	public List<MoneyBook> execute() {
		MoneyBookDAO mbDao = new MoneyBookDAO();
		List<MoneyBook> mbList = mbDao.findAll();
		return mbList;
	}
}