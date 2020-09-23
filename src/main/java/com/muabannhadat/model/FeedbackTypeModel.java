package com.muabannhadat.model;

import java.util.List;

public class FeedbackTypeModel {
	private long id;
	private String name;
	private String status;
	private List<FeedbackModel> feedbackModels;
	
	
	public List<FeedbackModel> getFeedbackModels() {
		return feedbackModels;
	}
	public void setFeedbackModels(List<FeedbackModel> feedbackModels) {
		this.feedbackModels = feedbackModels;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
}
