package model;

public class MoneyBook {
	private String date;
	private int price;
	private String comment;
	private String tag;
	private String photo;

	public MoneyBook(String date, int price, String comment, String tag, String photo) {
		this.date = date;
		this.price = price;
		this.comment = comment;
		this.tag = tag;
		this.photo = photo;
	}
	
	public String getDate() { return date; }
	public int getPrice() {return price; }
	public String getComment() { return comment; }
	public String getTag() { return tag; }
	public String getPhoto() { return photo; }
}