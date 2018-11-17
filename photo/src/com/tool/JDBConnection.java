package com.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBConnection {
	private final String dbDriver = "com.mysql.jdbc.Driver"; // 设置SQL
	// Server2005数据库驱动名称
	private final String url = "jdbc:MySQL://localhost:3306/db_photo"; // 设置连接SQL
	// Servlet2005的utl地址
	private final String userName = "root"; // 设置登录数据库的用户
	private final String password = "zengchao123"; // 设置登录用户的密码
	private Connection con = null; // 设置连接对象，并赋值为null
	// 通过构造方法加载数据库驱动
	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
		} catch (Exception ex) {
			System.out.println("数据库加载失败");
		}
	}
	public boolean CreateConnection(){
		try{
			con = DriverManager.getConnection(url, userName, password);
			return true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
			System.out.println("creatConnectionError!");
			return false;
		}
	}
	
	
}
