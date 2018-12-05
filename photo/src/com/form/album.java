package com.form;

public class album {
	private Integer id = -1;
	private String username="";
	private String albumtype ="";
	private String albumtime = "";
	private String albumname="";
	private String albumcover="";
	
	public album(){
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAlbumtype() {
		return albumtype;
	}

	public void setAlbumtype(String albumtype) {
		this.albumtype = albumtype;
	}

	public String getAlbumtime() {
		return albumtime;
	}

	public void setAlbumtime(String albumtime) {
		this.albumtime = albumtime;
	}

	public String getAlbumname() {
		return albumname;
	}

	public void setAlbumname(String albumname) {
		this.albumname = albumname;
	}

	public String getAlbumcover() {
		return albumcover;
	}

	public void setAlbumcover(String albumcover) {
		this.albumcover = albumcover;
	}
	
}
