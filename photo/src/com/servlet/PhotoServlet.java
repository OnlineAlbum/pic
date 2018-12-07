package com.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.dao.OperationData;
import com.form.album;
import com.form.photo;
import com.form.UserInfo;


public class PhotoServlet extends HttpServlet {
	private String info = "";
	private OperationData data =null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void user_uploadPhoto(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		data=new OperationData();
		com.jspsmart.upload.SmartUpload su = new com.jspsmart.upload.SmartUpload();
		String information = "您输入的数据有误，添加相片失败！";
		try {
			su.initialize(this.getServletConfig(), request, response); // 设置长传操作的初始化
			su.setMaxFileSize(5 * 1024 * 1024); // 设置上传文件的大小
			su.upload();
			Files files = su.getFiles(); // 获取上传的文件操作
			System.out.println("上传照片数量："+files.getCount());
			for (int i = 0; i < files.getCount(); i++) {
				File singleFile = files.getFile(i); // 获取上传文件的单个文件
				String fileType = singleFile.getFileExt(); // 获取上传文件的扩展名
				System.out.println("照片后缀为："+fileType);
				String[] type = { "JPG", "jpg", "gif", "bmp", "BMP" }; // 设置上传文件的扩展名
				int place = java.util.Arrays.binarySearch(type, fileType); // 判断上传文件的类型是否正确
				String code = su.getRequest().getParameter("code"); // 获取表单中验证码内容
				String codeSession = (String) request.getSession()
						.getAttribute("rand"); // 获取客户端session中验证码的值
				System.out.println("用户输入验证码："+code);
				System.out.println("session中的验证码："+codeSession);
				if(code.equals(codeSession)){   // 判断验证码是否正确
					System.out.println("数组是否包含："+Arrays.asList(type).contains(fileType));
					if (Arrays.asList(type).contains(fileType)) {
						if (!singleFile.isMissing()) { // 判断该文件是否被选择
							String photoName = su.getRequest().getParameter(
									"photoName")
									+ i; // 获取相片的名称
							System.out.println("相片的名称:"+photoName);
							String albumname = su.getRequest().getParameter(
									"albumname"); // 获取相册名称
							String photoTime = su.getRequest().getParameter(
									"photoTime"); // 获取相册上传时间
							System.out.println("相册上传时间:"+photoTime);
							String username = su.getRequest().getParameter(
									"username"); // 获取上传用户名
							System.out.println("上传用户名:"+username);
							String photonote = su.getRequest().getParameter(
									"photoNote"); // 获取上传用户名
							System.out.println("照片说明:"+photonote);
							String photoSize = String.valueOf(singleFile
									.getSize()); // 获取上传文件的大小
							System.out.println("上传文件的大小:"+photoSize);
							String filedir = "savefile/"
									+ System.currentTimeMillis() + "."
									+ singleFile.getFileExt(); // 以系统时间作为上传文件名称，设置上传文件的完整路径
							System.out.println("上传文件的完整路径:"+filedir);
							String smalldir = "saveSmall/"
									+ System.currentTimeMillis() + "."
									+ singleFile.getFileExt();
							System.out.println("压缩图路径："+smalldir);
							photo photo = new photo();
							photo.setPhotoName(photoName);
							photo.setAlbumname(albumname);
							photo.setPhotoSize(photoSize);
							photo.setPhotoTime(photoTime);
							photo.setUsername(username);
							photo.setPhotoAddress(filedir);
							photo.setSmallPhoto(smalldir);
							photo.setPhotonote(photonote);
							System.out.println("photo_save之前");
							
							
							if(data.photo_save(photo)){
								singleFile.saveAs(filedir, File.SAVEAS_VIRTUAL); // 执行上传操作
								information = "您添加相片成功!";
							}
							
							
							
						}
						
					}
				}
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		request.setAttribute("information", information);
		request.getRequestDispatcher("shangchuan.jsp").forward(request,response);
		
	}
	
	public void CreateAlbum(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		data = new OperationData();
		String information = "您输入的数据有误，创建相册失败！";
		String code = request.getParameter("code");
		System.out.println("输入的验证码："+code);
		String codeSession = (String)request.getSession().getAttribute("rand");
		System.out.println("缓冲的验证码："+codeSession);
		if(code.equals(codeSession)){
			String username = request.getParameter("username");
			String albumtype = request.getParameter("albumtype");
			String albumtime = request.getParameter("albumtime");
			String albumname = request.getParameter("albumname");
			System.out.println("用户名："+username);
			System.out.println("相册类型："+albumtype);
			System.out.println("创建时间："+albumtime);
			System.out.println("相册名称："+albumname);
			String albumcover = "savefile/cover.jpg";
			album album = new album();
			album.setAlbumcover(albumcover);
			album.setAlbumname(albumname);
			album.setAlbumtime(albumtime);
			album.setAlbumtype(albumtype);
			album.setUsername(username);
			try{
				if(data.album_create(album)){
					information = "您创建相册成功!";
				}
			}catch(Exception e){
				System.out.println(e);
			}
			
		}
		request.setAttribute("information", information);
		request.getRequestDispatcher("refresh.jsp").forward(request, response);
	}
	public void refresh(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		UserInfo userInfo = (UserInfo)request.getSession().getAttribute("userInfo");
		String username = userInfo.getUsername();
		System.out.println("当前用户："+username);
		String condition = "username='"+username+"'";
		List list = new OperationData().queryPhotoList(condition);
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("main.jsp").forward(request,response);
	}
	public void user_deleteAlbum(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		data = new OperationData();
		Integer id = Integer.valueOf(request.getParameter("id"));
		String condition = "id="+id;
		List list = data.queryPhotoList(condition);
		try{
			data.Album_delete(id);
		}catch(Exception e){
			System.out.println(e);
		}
		request.getRequestDispatcher("dealwith.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		info = request.getParameter("info");
		if (info.equals("userUploadPhoto")) {
			this.user_uploadPhoto(request, response);
		}
		if(info.equals("createalbum")){
			this.CreateAlbum(request, response);
		}
		if(info.equals("refresh")){
			this.refresh(request, response);
		}
		if(info.equals("userDeleteAlbum")){
			this.user_deleteAlbum(request, response);
		}
	}

}
