package com.itheima.core.service.impl; 
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.common.utils.Page;
import com.itheima.core.dao.BookDao;
import com.itheima.core.po.Book;
import com.itheima.core.service.BookService;
/**
 * 图书管理
 */
@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	// 声明DAO属性并注入
	@Autowired
	private BookDao bookDao;
	// 图书列表
	public Page<Book> findBookList(Integer page, Integer rows, 
            Integer isbn,String title,
            String author,String publisher,
            String type,Float price,
            String publicationDate,String introduction,String photo) {
		// 创建图书对象
         Book book = new Book();
		// 判断图书题目
		if(StringUtils.isNotBlank(title)){
			book.setTitle(title);
		}
		// 判断图书作者
		if(StringUtils.isNotBlank(author)){
			book.setAuthor(author);
		}
		// 判断图书出版社
		if(StringUtils.isNotBlank(publisher)){
			book.setPublisher(publisher);
		}
		// 判断图书编号
		book.setIsbn(isbn);
		// 判断图书类型
		if(StringUtils.isNotBlank(type)){
			book.setType(type);
		}
		// 判断图书价格
		book.setPrice(price);
		// 判断图书出版日期
		if(StringUtils.isNotBlank(publicationDate)){
		
			book.setPublicationDate(publicationDate);
		}
		// 判断图书简介
		if(StringUtils.isNotBlank(introduction)){
			book.setIntroduction(introduction);
		}
		//判断图书封面
		if(StringUtils.isNotBlank(photo)){
			book.setIntroduction(photo);
		}
		// 当前页
		book.setStart((page-1) * rows) ;
		// 每页数
		book.setRows(rows);
		// 查询图书列表
		List<Book> books = bookDao.selectBookList(book);
		// 查询图书列表总记录数
		Integer count = bookDao.selectBookListCount(book);
		// 创建Page返回对象
		Page<Book> result = new Page<>();
		result.setPage(page);
		result.setRows(books);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建图书
	 */
	@Override
	public int createBook(Book book) {
	    return bookDao.createBook(book);
	}
	/**
	 * 通过编号查询图书
	 */
	@Override
	public Book getBookByIsbn(Integer isbn) {	
	    Book book = bookDao.getBookByIsbn(isbn);
	    return book;		
	}
	/**
	 * 更新图书
	 */
	@Override
	public int updateBook(Book book) {
	    return bookDao.updateBook(book);
	}
	/**
	 * 删除图书
	 */
	@Override
	public int deleteBook(Integer isbn) {
	    return bookDao.deleteBook(isbn);	
	}

	
}
