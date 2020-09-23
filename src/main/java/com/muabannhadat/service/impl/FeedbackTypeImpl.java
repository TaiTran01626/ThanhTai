package com.muabannhadat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.FeedbackTypeEntity;
import com.muabannhadat.repository.FeedbackTypeRepository;
import com.muabannhadat.service.FeedbackTypeService;

@Repository("feedbackTypeService")
public class FeedbackTypeImpl implements FeedbackTypeService {
	@Autowired
	FeedbackTypeRepository feedbackTypeRepository;

	@Override
	public List<FeedbackTypeEntity> findAll() {
		return feedbackTypeRepository.findAll();
	}

}
