package com.itheima.core.dao;
import java.util.List;
import com.itheima.core.po.Book;
/**
 * Book接口
 */
public interface BookDao {
    // 图书列表
	public List<Book> selectBookList(Book book);
	// 图书数
	public Integer selectBookListCount(Book book);
	
	// 创建图书
	public int createBook(Book book);
	// 通过ISBN查询图书
	public Book getBookByIsbn(Integer isbn);
	// 更新图书信息
	public int updateBook(Book book);
	// 删除图书信息
	int deleteBook (Integer isbn);

}
