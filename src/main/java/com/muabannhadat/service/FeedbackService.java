package com.muabannhadat.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.muabannhadat.entity.FeedbackEntity;
import com.muabannhadat.model.FeedbackModel;
@Service
public interface FeedbackService {
		public FeedbackModel saveFeedback(FeedbackModel model,long id);
		//Hop
		 public List<FeedbackEntity> findAll(Pageable pageable);
			public void saveFeedback(FeedbackEntity feedbackEntity);
			void browseArticles(Long id);
			Integer count();
			void delete(Long id);
			void delete(Long[] ids);
			void rehibilitate(Long id);
}
