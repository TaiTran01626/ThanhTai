package com.muabannhadat.model;

import java.util.List;

public class NewsTypeModel {
	private String name;
	private List<PostNewModel> models;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<PostNewModel> getModels() {
		return models;
	}
	public void setModels(List<PostNewModel> models) {
		this.models = models;
	}
	
}
