package com.muabanhadat.ajax;

import java.util.List;

import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.model.PostNewModel;

public class SearchResponse {
	private boolean validated;
	private List<PostNewsEntity> list;
	private List<PostNewModel> models;
	private List<PostNewResponse> newResponses;
	
	
	public List<PostNewResponse> getNewResponses() {
		return newResponses;
	}
	public void setNewResponses(List<PostNewResponse> newResponses) {
		this.newResponses = newResponses;
	}
	public boolean isValidated() {
		return validated;
	}
	public void setValidated(boolean validated) {
		this.validated = validated;
	}
	public List<PostNewsEntity> getList() {
		return list;
	}
	public void setList(List<PostNewsEntity> list) {
		this.list = list;
	}
	public List<PostNewModel> getModels() {
		return models;
	}
	public void setModels(List<PostNewModel> models) {
		this.models = models;
	}
	
	
}
