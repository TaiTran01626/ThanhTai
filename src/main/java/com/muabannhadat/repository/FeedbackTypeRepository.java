package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.FeedbackTypeEntity;

@Repository("feedbackTypeRepository")
public interface FeedbackTypeRepository extends JpaRepository<FeedbackTypeEntity, Long> {

}
