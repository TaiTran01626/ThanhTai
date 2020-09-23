package com.muabannhadat.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.FeedbackEntity;
import com.muabannhadat.entity.FeedbackTypeEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.FeedbackModel;
import com.muabannhadat.repository.FeedbackRespository;
import com.muabannhadat.service.FeedbackService;
import com.muabannhadat.service.UserService;
@Repository("feedbackService")
public class FeedbackImpl implements FeedbackService {
	@Autowired
	UserService userService;
	@Autowired
	FeedbackRespository feedbackRespository;

	@Override
	public FeedbackModel saveFeedback(FeedbackModel feedback, long id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getName().equalsIgnoreCase("anonymousUser")) {
			feedback.setValidated(false);
			feedback.setMessage("Bạn Chưa Tạo Tài Khoản!! Vui Lòng Tạo!!");
			return feedback;

		}
		feedback.setValidated(true);
		FeedbackEntity entity = new FeedbackEntity();
		entity.setType(new FeedbackTypeEntity(feedback.getType().getId()));
		// set Time
		Date sdate = new Date();
		entity.setTime(sdate);
		
		//setPost
	
		PostNewsEntity postNewsEntity = new PostNewsEntity(id);
		entity.setPost(postNewsEntity);
		
		//setUser
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		UsersEntity usersEntity = userService.findOne(username);
		entity.setUser(usersEntity);
		
		
		feedbackRespository.save(entity);
		feedback.setMessage("Bạn đã feedback thành công!!");
		
		return feedback;
	}

	@Override
	public List<FeedbackEntity> findAll(Pageable pageable) {
		return feedbackRespository.findAll(pageable).getContent();
	}

	@Override
	public void saveFeedback(FeedbackEntity feedbackEntity) {
		feedbackEntity.setStatus("1");
		feedbackRespository.save(feedbackEntity);
	}

	@Override
	public void browseArticles(Long id) {
		FeedbackEntity entity = feedbackRespository.getOne(id);
		entity.setStatus("0");
		entity.getPost().setStatus("2");
		feedbackRespository.save(entity);

	}

	@Override
	public Integer count() {
		return (int) feedbackRespository.count();
	}

	@Override
	public void delete(Long id) {
		FeedbackEntity entity = feedbackRespository.getOne(id);
		entity.setStatus("0");
		feedbackRespository.save(entity);
	}

	@Override
	public void rehibilitate(Long id) {
		FeedbackEntity entity = feedbackRespository.getOne(id);
		entity.setStatus("0");
		entity.getPost().setStatus("1");
		feedbackRespository.save(entity);

	}

	@Override
	public void delete(Long[] ids) {
		for (Long id : ids) {
			FeedbackEntity entity = feedbackRespository.getOne(id);
			entity.setStatus("0");
			feedbackRespository.save(entity);
		}
	}

}
