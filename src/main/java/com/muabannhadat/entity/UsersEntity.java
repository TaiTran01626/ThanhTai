package com.muabannhadat.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "USERS")
public class UsersEntity implements Serializable {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String fullname;

	private String email;

	private String username;
	private String pass;

	@Transient
	private String repass;

	private String address;

	private String birthday;

	private String phone;
	
	private String status;

	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public UsersEntity(String fullname, String email, String username, String pass, String address, String birthday,
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



	@OneToMany(mappedBy = "user")
	private List<CommentEntity> comment;

	@OneToMany(mappedBy = "user")
	private List<FeedbackEntity> feedback;

	@OneToMany(mappedBy = "user")
	private List<NewsPostedEntity> newposted;
	
	@OneToMany(mappedBy = "user")
	private List<PostNewsEntity> postnews;
	
	@ManyToMany
	   @JoinTable(name="USER_ROLE", joinColumns = @JoinColumn(name ="user_id"),inverseJoinColumns = @JoinColumn(name="role_id"))
	private List<RoleEntity> role;


	public UsersEntity() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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

	public List<CommentEntity> getComment() {
		return comment;
	}

	public void setComment(List<CommentEntity> comment) {
		this.comment = comment;
	}

	public List<FeedbackEntity> getFeedback() {
		return feedback;
	}

	public void setFeedback(List<FeedbackEntity> feedback) {
		this.feedback = feedback;
	}

	public List<NewsPostedEntity> getNewposted() {
		return newposted;
	}

	public void setNewposted(List<NewsPostedEntity> newposted) {
		this.newposted = newposted;
	}

	public List<PostNewsEntity> getPostnews() {
		return postnews;
	}

	public void setPostnews(List<PostNewsEntity> postnews) {
		this.postnews = postnews;
	}

	

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public List<RoleEntity> getRole() {
		return role;
	}

	public void setRole(List<RoleEntity> role) {
		this.role = role;
	}
	
	
	
	
}
