package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.MoneyBook;

public class MoneyBookDAO {
	//データベース接続に使用する情報
	private final String JDBC_URL =  "jdbc:h2:tcp://localhost/~/Portfolio";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";
	
	public List<MoneyBook> findAll() {
		List<MoneyBook> mbList = new ArrayList<>();
		
		//データベースへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS)) {
			
			//SELECT文を準備
			String sql = "SELECT DATE,PRICE,COMMENT,TAG,PHOTO FROM MONEYBOOK";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			
			//SELECT文を実行し、結果表を取得
			ResultSet rs = pStmt.executeQuery();
			
			//結果表に格納されたレコードの内容を
			//MoneyBookインスタンスに設定し、ArrayListインスタンスに追加
			while (rs.next()) {
				String date = rs.getString("DATE");
				String price = rs.getString("PRICE");
				String comment = rs.getString("COMMENT");
				String tag = rs.getString("TAG");
				String photo = rs.getString("PHOTO");
				MoneyBook mb = new MoneyBook(date,price,comment,tag,photo);
				mbList.add(mb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return mbList;
	}
	public boolean create(MoneyBook mb) {
		//データベース接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			
			//INSERT文の準備
			String sql = "INSERT INTO MONEYBOOK(DATE,PRICE,COMMENT,TAG,PHOTO) VALUES(?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			
			//INSERT文中の「？」に使用する値を設定しSQLを完成
			pStmt.setString(1, mb.getDate());
			pStmt.setString(2, mb.getPrice());
			pStmt.setString(3, mb.getComment());
			pStmt.setString(4, mb.getTag());
			pStmt.setString(5, mb.getPhoto());
			
			//INSERT文を実行する
			int result = pStmt.executeUpdate();
			if (result != 1) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}