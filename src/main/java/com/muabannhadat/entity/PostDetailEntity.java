package com.muabannhadat.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "POSTDETAIL")
public class PostDetailEntity {
//	post_detail(id,content,area,address,list_image,phone,price,type_property)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String content;

	private int area;

	private String address;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "ITEM_IMAGES", joinColumns = @JoinColumn(name = "detail_id"), inverseJoinColumns = @JoinColumn(name = "image_id"))
	private List<ImagesEntity> images;

	private String phone;

	private double price;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<ImagesEntity> getImages() {
		return images;
	}

	public void setImages(List<ImagesEntity> images) {
		this.images = images;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	

}
