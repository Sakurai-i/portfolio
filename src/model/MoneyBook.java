package model;

public class MoneyBook {
	private String date;
	private String price;
	private String comment;
	private String tag;
	private String photo;
	
	public MoneyBook() {
	}
	
	public MoneyBook(String date) {
		this.date = date;
	}
	
	public MoneyBook(String date, String price) {
		this.date = date;
		this.price = price;
	}
	
	public MoneyBook(String date, String price, String comment) {
		this.date = date;
		this.price = price;
		this.comment = comment;
	}
	
	public MoneyBook(String date, String price, String comment, String tag) {
		this.date = date;
		this.price = price;
		this.comment = comment;
		this.tag = tag;
	}
	
	public MoneyBook(String date, String price, String comment, String tag, String photo) {
		this.date = date;
		this.price = price;
		this.comment = comment;
		this.tag = tag;
		this.photo = photo;
	}
	
	public String getDate() { return date; }
	public String getPrice() {return price; }
	public String getComment() { return comment; }
	public String getTag() { return tag; }
	public String getPhoto() { return photo; }
}