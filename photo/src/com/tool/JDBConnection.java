package com.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBConnection {
	private final String dbDriver = "com.mysql.jdbc.Driver"; // ����SQL
	// Server2005���ݿ���������
	private final String url = "jdbc:MySQL://localhost:3306/db_photo"; // ��������SQL
	// Servlet2005��utl��ַ
	private final String userName = "root"; // ���õ�¼���ݿ���û�
	private final String password = "zengchao123"; // ���õ�¼�û�������
	private Connection con = null; // �������Ӷ��󣬲���ֵΪnull
	// ͨ�����췽���������ݿ�����
	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance(); // ͨ��Java������ƽ��м������ݿ���������
		} catch (Exception ex) {
			System.out.println("���ݿ����ʧ��");
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
