package com.form;

public class photo {
	private Integer id = -1;       // 设置数据库自动编号的对象
	private String photoName = ""; // 设置相片名称的对象
	private String photoSize = ""; // 设置相片大小的对象
	private String photoTime = ""; // 设置相片上传时间的对象
	private String photoAddress = ""; // 设置相片保存在服务器端地址的对象
	private String username = ""; // 设置相片上传用户的对象
	private String albumname = ""; // 设置相片所在相册名称的对象
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

	//设置相册信息的构造方法
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
