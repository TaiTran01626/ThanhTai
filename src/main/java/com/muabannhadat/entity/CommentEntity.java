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
@Table(name = "COMMENT")
public class CommentEntity {
//comment(id,content,id_post_news,time_curren,id_users,status)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String content;

	@JoinColumn(name = "post_id")
	@ManyToOne
	private PostNewsEntity post;

	private Date time;

	@JoinColumn(name = "user_id")
	@ManyToOne
	private UsersEntity user;

	private String status;

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

	public UsersEntity getUser() {
		return user;
	}

	public void setUser(UsersEntity user) {
		this.user = user;
	}
	

}
