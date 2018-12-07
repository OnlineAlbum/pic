package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.form.UserInfo;
import com.form.album;
import com.form.photo;


import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class OperationData {
	private final String dbDriver = "com.mysql.jdbc.Driver"; // 设置SQL
	// Server2005数据库驱动名称
	private final String url = "jdbc:MySQL://localhost:3306/db_photo"; // 设置连接SQL
	// Servlet2005的utl地址
	private final String userName = "root"; // 设置登录数据库的用户
	private final String password = "zengchao123"; // 设置登录用户的密码
	private List list = null;
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
				sql = "insert into tb_photo(photoName,photoSize,albumname,photoTime,photoAddress,username,printAddress,smallPhoto,photonote) values ('"+ photo.getPhotoName() + "','"
						+ photo.getPhotoSize() + "','" + photo.getAlbumname() + "','"
						+ photo.getPhotoTime() + "','" + photo.getPhotoAddress()
						+ "','" + photo.getUsername() + "','abc','" + photo.getSmallPhoto()
						+ "','"+photo.getPhotonote()+"')";
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
		public boolean album_create(album album) throws SQLException{
			int count=0;
			sql = "insert into tb_album(username,albumtype,albumtime,albumname,albumcover) values ('"+ album.getUsername() + "','"
					+ album.getAlbumtype() + "','" + album.getAlbumtime() + "','"
					+ album.getAlbumname() + "','" + album.getAlbumcover() +"')";
			try {
				Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
			} catch (Exception ex) {
				System.out.println(ex);
			}
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("数据库con加载成功");
			Statement stmt = con.createStatement();
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
		}
		public List queryPhotoList(String condition)
		{
			try {
				Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
			} catch (Exception ex) {
				System.out.println(ex);
			}
			try{
				con = DriverManager.getConnection(url, userName, password);
				list = new ArrayList();
				Statement stmt = con.createStatement();
				//sql = "select * from tb_photo where id in(select max(id) as max from tb_photo group by photoType having username='"+username+"')";
				//sql="select * from tb_album where username='"+username+"' order by id desc";
				sql="select * from tb_album where "+condition+" order by id desc";
				album album = null;
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()){
					album = new album();
					album.setAlbumtype(rs.getString("albumtype"));
					album.setAlbumname(rs.getString("albumname"));
					album.setAlbumtime(rs.getString("albumtime"));
					album.setId(rs.getInt("id"));
					album.setUsername(rs.getString("username"));
					album.setAlbumcover(rs.getString("albumcover"));
				
					list.add(album);
					}
				}catch(SQLException e) {
					System.out.println(e.getMessage());
				}finally{
					try{
						con.close();
					}catch(SQLException e){
						System.out.println(e.getMessage());
					}
				}
			
			return list;
			
		}
		
		public List Photo_queryList(String condition){
			photo photo = null;
			list = new ArrayList();
			sql = "select * from tb_photo";
			if (condition != null) { // 当condition对象不为空，则根据这个条件来设置SQL语句
				sql = "SELECT * FROM tb_photo WHERE " + condition + "";
			}
			try {
				Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
			} catch (Exception ex) {
				System.out.println(ex);
			}
			try{
				con = DriverManager.getConnection(url, userName, password);
				
				Statement stmt = con.createStatement();
				
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()){
					photo = new photo();
					photo.setAlbumname(rs.getString("albumname"));
					photo.setNumber(rs.getInt("number"));
					photo.setMax(rs.getInt("max"));
					photo.setPhotoAddress(rs.getString("photoAddress"));
					photo.setPhotoName(rs.getString("photoName"));
					photo.setPhotoSize(rs.getString("photoSize"));
					photo.setPhotoTime(rs.getString("photoTime"));
					photo.setPrintAddress(rs.getString("printAddress"));
					photo.setSmallPhoto(rs.getString("smallPhoto"));
					photo.setUsername(rs.getString("username"));
					photo.setId(rs.getInt("id"));
					list.add(photo);
					}
				}catch(SQLException e) {
					System.out.println(e.getMessage());
				}finally{
					try{
						con.close();
					}catch(SQLException e){
						System.out.println(e.getMessage());
					}
				}
			
			return list;
		}
		public boolean Album_delete(Integer id) throws SQLException{
			int count=0;
			sql = "delete from tb_album where id="+id+"";
			try {
				Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
			} catch (Exception ex) {
				System.out.println(ex);
			}
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("数据库con加载成功");
			Statement stmt = con.createStatement();
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
			
		}
		public String findUsername(String username) {
			String psw = null;
			PreparedStatement pstmt =null;
			ResultSet rs = null;
			try {
				try {
					Class.forName(dbDriver).newInstance(); // 通过Java反射机制进行加载数据库驱动操作
				} catch (Exception ex) {
					System.out.println("数据库加载失败");
				}
				 con = DriverManager.getConnection(url, userName, password);
				//Statement stmt = con.createStatement();
				String sql = "select * from `tb_userinfo` where Username=?";
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
		public void addUser(String username,String psw,String question,String answer) {
			PreparedStatement pstmt =null;
			try {
				try {
					Class.forName(dbDriver).newInstance();
				} catch (InstantiationException | IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 con = DriverManager.getConnection(url, userName, password);
				//Statement stmt = con.createStatement();
				String sql = "INSERT INTO `tb_userinfo` VALUES(?,?,null,null,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, username);
				pstmt.setString(2, psw);
				pstmt.setString(3, question);
				pstmt.setString(4, answer);
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
}
