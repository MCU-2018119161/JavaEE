package com.itheima.core.web.controller;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.Book;
import com.itheima.core.po.User;
import com.itheima.core.service.BaseDictService;
import com.itheima.core.service.BookService;
/**
 * 图书管理控制器类
 */
@Controller
public class BookController {
	// 依赖注入
	@Autowired
	private BookService bookService;
	private String realFilePath;
	/**
	 *  图书列表
	 */
	@RequestMapping(value = "/book/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			Integer isbn, String title, String author,
			String publisher,String type, Float price,
            String publicationDate,String introduction,String photo, Model model) {
		// 条件查询所有图书
		Page<Book> books = bookService
				.findBookList(page, rows, isbn, 
                                        title, author, publisher, type,
                                        price, publicationDate, introduction,photo);
		
		model.addAttribute("page", books);
		model.addAttribute("isbn", isbn);
		model.addAttribute("title", title);
		model.addAttribute("author", author);
		model.addAttribute("publisher", publisher);
		model.addAttribute("price", price);
		model.addAttribute("publicationDate", publicationDate);
		model.addAttribute("type", type);
		model.addAttribute("introduction", introduction);
		model.addAttribute("photo", photo);
		return "book";
	}
	

	@RequestMapping(value = "/book/visit.action")
	public String visit(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			Integer isbn, String title, String author,
			String publisher,String type, Float price,
            String publicationDate,String introduction,String photo, Model model) {
		// 条件查询所有图书
		Page<Book> books = bookService
				.findBookList(page, rows, isbn, 
                                        title, author, publisher, type,
                                        price, publicationDate, introduction,photo);
		
		model.addAttribute("page", books);
		model.addAttribute("isbn", isbn);
		model.addAttribute("title", title);
		model.addAttribute("author", author);
		model.addAttribute("publisher", publisher);
		model.addAttribute("price", price);
		model.addAttribute("publicationDate", publicationDate);
		model.addAttribute("type", type);
		model.addAttribute("introduction", introduction);
		model.addAttribute("photo", photo);
		return "visitor";
	}
	
	/**
     * 封装图片上传方法
     * @param file            表单中的file
     * @param oldFileName    原图片名称
     * @return
     */
	@RequestMapping(value = "/book/uploadBookCover.action")
	@ResponseBody
    protected String uploadBookPhoto(@RequestParam("photo") MultipartFile file,HttpServletRequest request) {
        if(file!=null && file.getSize()>0){
            //获取原图片名称
        	String originalFilename=file.getOriginalFilename();
        	//设计上传保存目录
        	 String dirPath= request.getServletContext().getRealPath("/bookCover/");
        	
        	File filePath=new File(dirPath);
        	if(!filePath.exists()) {
        		filePath.mkdirs();
        	}
        	// 新的图片名称
            String newFileName=UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
            // 拼接存放图片的物理路径
            realFilePath=(dirPath + "\\" + newFileName);
            // 将内存中的数据写入磁盘
            try {
                file.transferTo(new File(dirPath + newFileName));
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace();
            }
            // 返回新的图片名称
            //System.out.print("物理路径"+realFilePath);
            return realFilePath;
        }
		return null;   
    }
	
    
	/**
	 * 创建图书
	 */
	@RequestMapping("/book/create.action")
	@ResponseBody
	public String bookCreate(//@RequestParam("photo") MultipartFile photo,HttpServletRequest request,
			
			 Book book) {
	    
		 /*  
		// 获取上传图片路径
       String oldFileName = photo.getOriginalFilename();
        // 调用图片上传方法，获取新的图片名称
        String newFileName = upload(photo, oldFileName);
        if(null != newFileName){
            //将新的图片名称写到info模型中
        	book.setPhoto(newFileName);
        }
          */
		
		
		book.setPhoto(realFilePath);
		
		// 执行Service层中的创建方法，返回的是受影响的行数
		//System.out.println("路径："+book.getPhoto());
	    int rows = bookService.createBook(book);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	

	/**
	 * 通过sibn获取图书信息
	 */
	@RequestMapping("/book/getBookByIsbn.action")
	@ResponseBody
	public Book getBookByIsbn(Integer isbn) {
	    Book book = bookService.getBookByIsbn(isbn);
	    return book;
	}
	/**
	 * 更新图书
	 */
	@RequestMapping("/book/update.action")
	@ResponseBody
	public String bookUpdate(Book book) {
		book.setPhoto(realFilePath);
	    int rows = bookService.updateBook(book);

	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除图书
	 */
	@RequestMapping("/book/delete.action")
	@ResponseBody
	public String bookDelete(Integer isbn) {
	    int rows = bookService.deleteBook(isbn);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
