package com.muabannhadat.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.muabannhadat.entity.CommentEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.model.CommentModel;

@Service
public interface CommentService {
	CommentModel saveComment(CommentModel comment, long id);
	//Hop
	public void savePostnew(CommentEntity comment);
	 
	 public List<PostNewsEntity> getListPostnewByIdPostnew(int idPostnew);

	public void saveComment(CommentEntity commentEntity);

	public List<CommentEntity> findAll(Pageable pageable);

	void delete(Long[] ids);

	void delete(Long id);

	Integer count();
}
