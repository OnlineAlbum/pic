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
		String information = "��������������������Ƭʧ�ܣ�";
		try {
			su.initialize(this.getServletConfig(), request, response); // ���ó��������ĳ�ʼ��
			su.setMaxFileSize(5 * 1024 * 1024); // �����ϴ��ļ��Ĵ�С
			su.upload();
			Files files = su.getFiles(); // ��ȡ�ϴ����ļ�����

			for (int i = 0; i < files.getCount(); i++) {
				File singleFile = files.getFile(i); // ��ȡ�ϴ��ļ��ĵ����ļ�
				System.out.println(files.getCount());
				String fileType = singleFile.getFileExt(); // ��ȡ�ϴ��ļ�����չ��
				String[] type = { "JPG", "jpg", "gif", "bmp", "BMP" }; // �����ϴ��ļ�����չ��
				int place = java.util.Arrays.binarySearch(type, fileType); // �ж��ϴ��ļ��������Ƿ���ȷ
				String code = su.getRequest().getParameter("code"); // ��ȡ������֤������
				String codeSession = (String) request.getSession()
						.getAttribute("rand"); // ��ȡ�ͻ���session����֤���ֵ
				System.out.println("�û�������֤�룺"+code);
				System.out.println("session�е���֤�룺"+codeSession);
				if(code.equals(codeSession)){   // �ж���֤���Ƿ���ȷ
					if (place != -1) {
						if (!singleFile.isMissing()) { // �жϸ��ļ��Ƿ�ѡ��
							String photoName = su.getRequest().getParameter(
									"photoName")
									+ i; // ��ȡ��Ƭ������
							System.out.println("��Ƭ������:"+photoName);
							String photoType = su.getRequest().getParameter(
									"photoType"); // ��ȡ�������
							System.out.println(photoType);
							String photoTime = su.getRequest().getParameter(
									"photoTime"); // ��ȡ����ϴ�ʱ��
							System.out.println("����ϴ�ʱ��:"+photoTime);
							String username = su.getRequest().getParameter(
									"username"); // ��ȡ�ϴ��û���
							System.out.println("�ϴ��û���:"+username);
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
							photo.setPhotoType(photoType);
							photo.setPhotoSize(photoSize);
							photo.setPhotoTime(photoTime);
							photo.setUsername(username);
							photo.setPhotoAddress(filedir);
							photo.setSmallPhoto(smalldir);
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
