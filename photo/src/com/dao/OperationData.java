package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.form.UserInfo;
import java.sql.Statement;


public class OperationData {
	private final String dbDriver = "com.mysql.jdbc.Driver"; // ����SQL
	// Server2005���ݿ���������
	private final String url = "jdbc:MySQL://localhost:3306/db_photo"; // ��������SQL
	// Servlet2005��utl��ַ
	private final String userName = "root"; // ���õ�¼���ݿ���û�
	private final String password = "zengchao123"; // ���õ�¼�û�������
	
	
	
	public UserInfo user_query(String username) throws SQLException{
		UserInfo userInfo = null;
		try {
			Class.forName(dbDriver).newInstance(); // ͨ��Java������ƽ��м������ݿ���������
		} catch (Exception ex) {
			System.out.println("���ݿ����ʧ��");
		}
		Connection con = DriverManager.getConnection(url, userName, password);
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
		return userInfo;
	}
}
