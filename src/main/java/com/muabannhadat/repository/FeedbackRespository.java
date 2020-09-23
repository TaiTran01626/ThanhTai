package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.FeedbackEntity;
@Repository("feedbackRespository")
public interface FeedbackRespository extends JpaRepository<FeedbackEntity, Long>{
	

}

