package com.muabannhadat.model;

import java.util.Date;

public class FeedbackModel {
	private FeedbackTypeModel type;
	private Date time;
	private UserModel user;
	private PostNewModel post;
	private boolean validated;
	private String message;
	
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isValidated() {
		return validated;
	}

	public void setValidated(boolean validated) {
		this.validated = validated;
	}

	public FeedbackTypeModel getType() {
		return type;
	}

	public void setType(FeedbackTypeModel type) {
		this.type = type;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	public PostNewModel getPost() {
		return post;
	}

	public void setPost(PostNewModel post) {
		this.post = post;
	}



}
