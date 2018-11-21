package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.form.UserInfo;
import com.form.photo;


import java.sql.Statement;


public class OperationData {
	private final String dbDriver = "com.mysql.jdbc.Driver"; // 设置SQL
	// Server2005数据库驱动名称
	private final String url = "jdbc:MySQL://localhost:3306/db_photo"; // 设置连接SQL
	// Servlet2005的utl地址
	private final String userName = "root"; // 设置登录数据库的用户
	private final String password = "zengchao123"; // 设置登录用户的密码
	String sql="";
	Connection con = null;
	
	
	public UserInfo user_query(String username) throws SQLException{
		UserInfo userInfo = null;
		try {
			Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
		} catch (Exception ex) {
			System.out.println("数据库加载失败");
		}
		 con = DriverManager.getConnection(url, userName, password);
		Statement stmt = con.createStatement();
		String sql = "select * from tb_userinfo where username='"+username+"'";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			userInfo = new UserInfo();
			userInfo.setUsername(rs.getString("username"));
			userInfo.setPassword(rs.getString("password"));
			userInfo.setRealname(rs.getString("realname"));
			userInfo.setEmail(rs.getString("email"));
			userInfo.setQuestion(rs.getString("question"));
			userInfo.setResult(rs.getString("result"));
			
		}
		if (con != null) {    // 关闭数据库连接操作
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println("Failed to close connection!");
			}finally{
				con=null;
			}
		}
		return userInfo;
	}
	
	// 实现相片数据保存操作，该方法以相片信息类的对象为参数
		public boolean photo_save(photo photo) throws SQLException {
			try {
				Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
			} catch (Exception ex) {
				System.out.println(ex);
			}
			int count=0;
				con = DriverManager.getConnection(url, userName, password);
				System.out.println("数据库con加载成功");
				Statement stmt = con.createStatement();
				sql = "insert into tb_photo(photoName,photoSize,photoType,photoTime,photoAddress,username,printAddress,smallPhoto,a) values ('"+ photo.getPhotoName() + "','"
						+ photo.getPhotoSize() + "','" + photo.getPhotoType() + "','"
						+ photo.getPhotoTime() + "','" + photo.getPhotoAddress()
						+ "','" + photo.getUsername() + "','abc','" + photo.getSmallPhoto()
						+ "','abc')";
				 count = stmt.executeUpdate(sql);
				 if (con != null) {    // 关闭数据库连接操作
						try {
							con.close();
						} catch (SQLException e) {
							System.out.println("Failed to close connection!");
						}finally{
							con=null;
						}
					}
			if(count>0){
				return true;
			}else{
				return false;
			}
			// 设置保存相片数据库的SQL语句

		}
}
