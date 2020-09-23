package com.muabannhadat.model;

import java.util.List;

public class UserModel {
	

	private String fullname;
	private String email;
	private String username;
	private String pass;
	private String re_pass;
	private String address;
	private String birthday;
	private String phone;
	private List<PostNewModel> postnews;
	private List<PostNewModel> newposted;
	
	public UserModel(String fullname) {
		super();
		this.fullname = fullname;
	}
	public UserModel() {
		super();
	}
	public UserModel(String fullname, String email, String username, String pass, String address, String birthday,
		String phone) {
	super();
	this.fullname = fullname;
	this.email = email;
	this.username = username;
	this.pass = pass;
	this.address = address;
	this.birthday = birthday;
	this.phone = phone;
}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRe_pass() {
		return re_pass;
	}
	public void setRe_pass(String re_pass) {
		this.re_pass = re_pass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public List<PostNewModel> getPostnews() {
		return postnews;
	}
	public void setPostnews(List<PostNewModel> postnews) {
		this.postnews = postnews;
	}
	public List<PostNewModel> getNewposted() {
		return newposted;
	}
	public void setNewposted(List<PostNewModel> newposted) {
		this.newposted = newposted;
	}
	
}
