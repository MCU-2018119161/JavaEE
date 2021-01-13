package com.itheima.core.service;
import java.util.Date;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Book;
public interface BookService {
	// 查询图书列表
	public Page<Book> findBookList(Integer page, Integer rows, 
			                            Integer isbn,String title,
                                        String author,String publisher,
                                        String type,Float price,
                                        String publicationDate,String introduction,String photo);
	//创建图书
	public int createBook(Book Book);
	
	// 通过id查询图书
	public Book getBookByIsbn(Integer isbn);
	// 更新图书
	public int updateBook(Book Book);
	// 删除图书
	public int deleteBook(Integer isbn);

}
