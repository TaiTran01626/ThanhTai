package com.muabannhadat.model;

import java.util.List;

import com.muabannhadat.entity.CommentEntity;
import com.muabannhadat.entity.FeedbackEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;

public class PageModel {
	private Integer page;
	private Integer limit;
	private Integer totalItem;
	private Integer totalPage;
	private List<PostNewsEntity> postNewsEntities;
	private List<FeedbackEntity>feedbackEntities;
	private List<CommentEntity> commentEntities;
	private List<UsersEntity> usersEntities;
	
	public List<FeedbackEntity> getFeedbackEntities() {
		return feedbackEntities;
	}
	public void setFeedbackEntities(List<FeedbackEntity> feedbackEntities) {
		this.feedbackEntities = feedbackEntities;
	}
	public List<CommentEntity> getCommentEntities() {
		return commentEntities;
	}
	public void setCommentEntities(List<CommentEntity> commentEntities) {
		this.commentEntities = commentEntities;
	}
	public List<UsersEntity> getUsersEntities() {
		return usersEntities;
	}
	public void setUsersEntities(List<UsersEntity> usersEntities) {
		this.usersEntities = usersEntities;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getTotalItem() {
		return totalItem;
	}
	public void setTotalItem(Integer totalItem) {
		this.totalItem = totalItem;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<PostNewsEntity> getPostNewsEntities() {
		return postNewsEntities;
	}
	public void setPostNewsEntities(List<PostNewsEntity> postNewsEntities) {
		this.postNewsEntities = postNewsEntities;
	}
	
	
	
}
