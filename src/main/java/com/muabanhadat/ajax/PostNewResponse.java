package com.muabanhadat.ajax;

import java.util.List;

import com.muabannhadat.entity.ImagesEntity;

public class PostNewResponse {
	private long id;
	private String title;
	private String s_date;
	private String address;
	private int area;
	private double price;
	private String code;
	private List<ImagesEntity> imagesEntities;
	
	
	
	public List<ImagesEntity> getImagesEntities() {
		return imagesEntities;
	}
	public void setImagesEntities(List<ImagesEntity> imagesEntities) {
		this.imagesEntities = imagesEntities;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	
	
}
