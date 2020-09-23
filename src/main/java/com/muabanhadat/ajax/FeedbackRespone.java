package com.muabanhadat.ajax;

import com.muabannhadat.entity.FeedbackEntity;

public class FeedbackRespone {
	 FeedbackEntity feedback;
	 long id;
	public FeedbackEntity getFeedbackEntity() {
		return feedback;
	}
	public void setFeedbackEntity(FeedbackEntity feedback) {
		this.feedback = feedback;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	 
}
