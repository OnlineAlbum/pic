package com.form;

public class photo {
	private Integer id = -1;       // �������ݿ��Զ���ŵĶ���
	private String photoName = ""; // ������Ƭ���ƵĶ���
	private String photoSize = ""; // ������Ƭ��С�Ķ���
	private String photoTime = ""; // ������Ƭ�ϴ�ʱ��Ķ���
	private String photoAddress = ""; // ������Ƭ�����ڷ������˵�ַ�Ķ���
	private String username = ""; // ������Ƭ�ϴ��û��Ķ���
	private String albumname = ""; // ������Ƭ����������ƵĶ���
	private String printAddress="";
	private String smallPhoto="";
	private Integer number=null;
	private Integer max = null;
	
	public Integer getMax() {
		return max;
	}

	public void setMax(Integer max) {
		this.max = max;
	}

	//���������Ϣ�Ĺ��췽��
	public photo() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getPhotoSize() {
		return photoSize;
	}

	public void setPhotoSize(String photoSize) {
		this.photoSize = photoSize;
	}

	public String getPhotoTime() {
		return photoTime;
	}

	public void setPhotoTime(String photoTime) {
		this.photoTime = photoTime;
	}

	public String getPhotoAddress() {
		return photoAddress;
	}

	public void setPhotoAddress(String photoAddress) {
		this.photoAddress = photoAddress;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAlbumname() {
		return albumname;
	}

	public void setAlbumname(String photoType) {
		this.albumname = photoType;
	}

	public String getPrintAddress() {
		return printAddress;
	}

	public void setPrintAddress(String printAddress) {
		this.printAddress = printAddress;
	}

	public String getSmallPhoto() {
		return smallPhoto;
	}

	public void setSmallPhoto(String smallPhoto) {
		this.smallPhoto = smallPhoto;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}
	
}
