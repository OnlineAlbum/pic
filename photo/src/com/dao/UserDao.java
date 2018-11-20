package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class UserDao {
	public String findUsername(String username){
		String psw = null;
		Connection con =null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			String driver ="com.mysql.cj.jdbc.Driver";
			String url ="jdbc:mysql://localhost:3306/webpic?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=UTC";
			String user ="root";
			String password ="lhj270222838";
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			String sql = "select * from `account` where name=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			if(rs==null){
				return null;
			}
			if(rs.next()){
				psw=rs.getString("password");
			}else{
				psw=null;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
				} 
			catch (SQLException e) {		
									}
		}
		return psw;
	}
	public void addUser(String username,String psw){
		Connection con =null;
		PreparedStatement pstmt =null;
		try {
			String driver ="com.mysql.cj.jdbc.Driver";
			String url ="jdbc:mysql://localhost:3306/webpic?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=UTC";
			String user ="root";
			String password ="lhj270222838";
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			String sql = "INSERT INTO `account` VALUES(null,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, psw);
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
				} 
			catch (SQLException e) {		
									}
		}
	}
	//µ•∂¿≤‚ ‘ π”√
	// public static void main(String[] args) {
	// UserDao u = new UserDao();
     // u.addUser("345", "345");
	// String psw =new UserDao().findUsername("999");
	// System.out.println(psw);

	// }
	
}
