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
		String information = "��������������������Ƭʧ�ܣ�";
		try {
			su.initialize(this.getServletConfig(), request, response); // ���ó��������ĳ�ʼ��
			su.setMaxFileSize(5 * 1024 * 1024); // �����ϴ��ļ��Ĵ�С
			su.upload();
			Files files = su.getFiles(); // ��ȡ�ϴ����ļ�����
			System.out.println("�ϴ���Ƭ������"+files.getCount());
			for (int i = 0; i < files.getCount(); i++) {
				File singleFile = files.getFile(i); // ��ȡ�ϴ��ļ��ĵ����ļ�
				String fileType = singleFile.getFileExt(); // ��ȡ�ϴ��ļ�����չ��
				System.out.println("��Ƭ��׺Ϊ��"+fileType);
				String[] type = { "JPG", "jpg", "gif", "bmp", "BMP" }; // �����ϴ��ļ�����չ��
				int place = java.util.Arrays.binarySearch(type, fileType); // �ж��ϴ��ļ��������Ƿ���ȷ
				String code = su.getRequest().getParameter("code"); // ��ȡ������֤������
				String codeSession = (String) request.getSession()
						.getAttribute("rand"); // ��ȡ�ͻ���session����֤���ֵ
				System.out.println("�û�������֤�룺"+code);
				System.out.println("session�е���֤�룺"+codeSession);
				if(code.equals(codeSession)){   // �ж���֤���Ƿ���ȷ
					System.out.println("�����Ƿ������"+Arrays.asList(type).contains(fileType));
					if (Arrays.asList(type).contains(fileType)) {
						if (!singleFile.isMissing()) { // �жϸ��ļ��Ƿ�ѡ��
							String photoName = su.getRequest().getParameter(
									"photoName")
									+ i; // ��ȡ��Ƭ������
							System.out.println("��Ƭ������:"+photoName);
							String albumname = su.getRequest().getParameter(
									"albumname"); // ��ȡ�������
							String photoTime = su.getRequest().getParameter(
									"photoTime"); // ��ȡ����ϴ�ʱ��
							System.out.println("����ϴ�ʱ��:"+photoTime);
							String username = su.getRequest().getParameter(
									"username"); // ��ȡ�ϴ��û���
							System.out.println("�ϴ��û���:"+username);
							String photonote = su.getRequest().getParameter(
									"photoNote"); // ��ȡ�ϴ��û���
							System.out.println("��Ƭ˵��:"+photonote);
							String photoSize = String.valueOf(singleFile
									.getSize()); // ��ȡ�ϴ��ļ��Ĵ�С
							System.out.println("�ϴ��ļ��Ĵ�С:"+photoSize);
							String filedir = "savefile/"
									+ System.currentTimeMillis() + "."
									+ singleFile.getFileExt(); // ��ϵͳʱ����Ϊ�ϴ��ļ����ƣ������ϴ��ļ�������·��
							System.out.println("�ϴ��ļ�������·��:"+filedir);
							String smalldir = "saveSmall/"
									+ System.currentTimeMillis() + "."
									+ singleFile.getFileExt();
							System.out.println("ѹ��ͼ·����"+smalldir);
							photo photo = new photo();
							photo.setPhotoName(photoName);
							photo.setAlbumname(albumname);
							photo.setPhotoSize(photoSize);
							photo.setPhotoTime(photoTime);
							photo.setUsername(username);
							photo.setPhotoAddress(filedir);
							photo.setSmallPhoto(smalldir);
							photo.setPhotonote(photonote);
							System.out.println("photo_save֮ǰ");
							
							
							if(data.photo_save(photo)){
								singleFile.saveAs(filedir, File.SAVEAS_VIRTUAL); // ִ���ϴ�����
								information = "�������Ƭ�ɹ�!";
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
		String information = "��������������󣬴������ʧ�ܣ�";
		String code = request.getParameter("code");
		System.out.println("�������֤�룺"+code);
		String codeSession = (String)request.getSession().getAttribute("rand");
		System.out.println("�������֤�룺"+codeSession);
		if(code.equals(codeSession)){
			String username = request.getParameter("username");
			String albumtype = request.getParameter("albumtype");
			String albumtime = request.getParameter("albumtime");
			String albumname = request.getParameter("albumname");
			System.out.println("�û�����"+username);
			System.out.println("������ͣ�"+albumtype);
			System.out.println("����ʱ�䣺"+albumtime);
			System.out.println("������ƣ�"+albumname);
			String albumcover = "savefile/cover.jpg";
			album album = new album();
			album.setAlbumcover(albumcover);
			album.setAlbumname(albumname);
			album.setAlbumtime(albumtime);
			album.setAlbumtype(albumtype);
			album.setUsername(username);
			try{
				if(data.album_create(album)){
					information = "���������ɹ�!";
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
		System.out.println("��ǰ�û���"+username);
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
