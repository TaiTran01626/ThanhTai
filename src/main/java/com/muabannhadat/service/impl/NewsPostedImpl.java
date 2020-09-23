package com.muabannhadat.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.NewsPostedEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.Message;
import com.muabannhadat.repository.NewsPostedRespository;
import com.muabannhadat.service.NewsPostedService;
import com.muabannhadat.service.UserService;

@Repository("newsPostedService")
public class NewsPostedImpl implements NewsPostedService{
	@Autowired
	UserService userService;
	@Autowired
	NewsPostedRespository newsPostedRespository;
	@Override
	public List<NewsPostedEntity> getAllByUser_id(long user_id) {
		return newsPostedRespository.findAllByUser_id(user_id);
	}

	@Override
	public List<NewsPostedEntity> getNewsPostedOfUser(long id) {
		return newsPostedRespository.findNewsPosted(id);
	}
	@Override
	public Message save(long id) {
		Message message = new Message();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getName().equalsIgnoreCase("anonymousUser")) {
			message.setValidated(false);
			message.setName("Bạn Chưa Tạo Tài Khoản!! Vui Lòng Tạo!!");
			return message;

		}
		message.setValidated(true);
		UsersEntity usersEntity = userService.findOne(auth.getName());

		PostNewsEntity postNewsEntity = new PostNewsEntity(id);

		NewsPostedEntity postedEntity = new NewsPostedEntity();

		postedEntity.setPost(postNewsEntity);
		postedEntity.setStatus("1");
		postedEntity.setUser(usersEntity);
		postedEntity.setTime(new Date());

		newsPostedRespository.save(postedEntity);
		message.setName("Lưu Thành Công");
		return message;
		
	}

}
