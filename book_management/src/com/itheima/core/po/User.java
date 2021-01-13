package com.itheima.core.po;
import java.io.Serializable;
/**
 * 用户持久化类
 */
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;      //用户id 
	private String username;     //用户账号
	private String password; //用户密码
	
	public Integer getUser_id() {
		return id;
	}
	public void setUser_id(Integer user_id) {
		this.id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
