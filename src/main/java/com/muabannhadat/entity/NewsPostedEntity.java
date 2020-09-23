package com.muabannhadat.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "NEWPOSTED")
public class NewsPostedEntity {
//	news_posted(id,id_users,id_post_news,time,status)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@ManyToOne
	@JoinColumn(name = "post_id")
	private PostNewsEntity post;
	
	@JoinColumn(name = "user_id")
	@ManyToOne
	private UsersEntity user;
	
	//ngay luu
	private Date time;
	
	private String status;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


	

	public UsersEntity getUser() {
		return user;
	}

	public void setUser(UsersEntity user) {
		this.user = user;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public PostNewsEntity getPost() {
		return post;
	}

	public void setPost(PostNewsEntity post) {
		this.post = post;
	}
	
	
}
