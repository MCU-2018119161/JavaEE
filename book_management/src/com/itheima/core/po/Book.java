package com.itheima.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 图书持久化类
 */
public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer isbn;              // 图书编号
	private String title;             // 图书标题
	private String author;           // 图书作者
	private String type;             // 图书类型
	private String publisher;         // 图书出版商
	private Float  price;             // 图书价格
	private String publicationDate;   // 图书印刷日期
	private String introduction;      // 图书简介
	private String photo;             // 图书封面
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	
	public Integer getIsbn() {
		return isbn;
	}
	public void setIsbn(Integer isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(String publicationDate) {
		this.publicationDate = publicationDate;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
	
	
}	