package com.muabannhadat.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.muabannhadat.entity.CommentEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.CommentModel;
import com.muabannhadat.repository.CommentRespository;
import com.muabannhadat.service.CommentService;
import com.muabannhadat.service.UserService;

@Repository("commentService")
public class CommentImpl implements CommentService {
	@Autowired
	UserService userService;

	@Autowired
	CommentRespository commentRespository;


	@Override
	public CommentModel saveComment(CommentModel comment, long id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getName().equalsIgnoreCase("anonymousUser")) {
			comment.setValidated(false);
			comment.setContent("Bạn Chưa Tạo Tài Khoản!! Vui Lòng Tạo!!");
			return comment;

		}
		comment.setValidated(true);
		CommentEntity entity = new CommentEntity();
		BeanUtils.copyProperties(comment, entity);
		// set Time
		Date sdate = new Date();
		entity.setTime(sdate);

		// setPost

		PostNewsEntity postNewsEntity = new PostNewsEntity(id);
		entity.setPost(postNewsEntity);

		// setUser
		String username = auth.getName();
		UsersEntity usersEntity = userService.findOne(username);
		entity.setUser(usersEntity);
		entity.setStatus("1");
		commentRespository.save(entity);
		comment.setName_user(username);
		comment.setTime(sdate);
		comment.setDate(sdate.toString());
		comment.setContent(
				"<div class='as' style='font-size: 15px; background-color: rgba(0, 0, 0, 0.4); color: #f7921d; border: 3px solid black; padding-top: 10px; padding-bottom: 10px;'><p>"
						+ username + "<i style='float: right;'>" + sdate + "</i> </p> <p style='color: white'>"
						+ comment.getContent() + "</p></div>");
		return comment;
	}

	@Override
	@Transactional
	public void savePostnew(CommentEntity comment) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public List<PostNewsEntity> getListPostnewByIdPostnew(int idPostnew) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveComment(CommentEntity commentEntity) {
		commentEntity.setStatus("1");
		commentRespository.save(commentEntity);
	}

	@Override
	public List<CommentEntity> findAll(Pageable pageable) {
		return commentRespository.findAll(pageable).getContent();
	}

	@Override
	public void delete(Long[] ids) {
		for (Long id : ids) {
			CommentEntity entity = commentRespository.findOne(id);
			entity.setStatus("0");
			commentRespository.save(entity);

		}
	}

	@Override
	public void delete(Long id) {
		CommentEntity entity = commentRespository.findOne(id);
		entity.setStatus("0");
		commentRespository.save(entity);

	}

	@Override
	public Integer count() {
		return (int) commentRespository.count();
	}

}
