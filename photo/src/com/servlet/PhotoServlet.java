package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.dao.OperationData;
import com.form.photo;


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

			for (int i = 0; i < files.getCount(); i++) {
				File singleFile = files.getFile(i); // 获取上传文件的单个文件
				System.out.println(files.getCount());
				String fileType = singleFile.getFileExt(); // 获取上传文件的扩展名
				String[] type = { "JPG", "jpg", "gif", "bmp", "BMP" }; // 设置上传文件的扩展名
				int place = java.util.Arrays.binarySearch(type, fileType); // 判断上传文件的类型是否正确
				String code = su.getRequest().getParameter("code"); // 获取表单中验证码内容
				String codeSession = (String) request.getSession()
						.getAttribute("rand"); // 获取客户端session中验证码的值
				System.out.println("用户输入验证码："+code);
				System.out.println("session中的验证码："+codeSession);
				if(code.equals(codeSession)){   // 判断验证码是否正确
					if (place != -1) {
						if (!singleFile.isMissing()) { // 判断该文件是否被选择
							String photoName = su.getRequest().getParameter(
									"photoName")
									+ i; // 获取相片的名称
							System.out.println("相片的名称:"+photoName);
							String photoType = su.getRequest().getParameter(
									"photoType"); // 获取相册名称
							System.out.println(photoType);
							String photoTime = su.getRequest().getParameter(
									"photoTime"); // 获取相册上传时间
							System.out.println("相册上传时间:"+photoTime);
							String username = su.getRequest().getParameter(
									"username"); // 获取上传用户名
							System.out.println("上传用户名:"+username);
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
							photo.setPhotoType(photoType);
							photo.setPhotoSize(photoSize);
							photo.setPhotoTime(photoTime);
							photo.setUsername(username);
							photo.setPhotoAddress(filedir);
							photo.setSmallPhoto(smalldir);
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
		request.getRequestDispatcher("shangchuan.jsp").forward(request,
				response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		info = request.getParameter("info");
		if (info.equals("userUploadPhoto")) {
			this.user_uploadPhoto(request, response);
		}
	}

}
