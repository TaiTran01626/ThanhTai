package com.muabannhadat.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "FEEDBACKTYPE")
public class FeedbackTypeEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String name;
	
	private String status;

	@OneToMany (mappedBy = "type")
	private List<FeedbackEntity> feedback;
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public FeedbackTypeEntity() {
		super();
	}

	public FeedbackTypeEntity(long id) {
		super();
		this.id = id;
	}
	
	
}
