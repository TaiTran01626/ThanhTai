package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.NewsPostedEntity;
import com.muabannhadat.model.Message;

@Service
public interface NewsPostedService {
	List<NewsPostedEntity> getAllByUser_id(long user_id);
	List<NewsPostedEntity> getNewsPostedOfUser(long id);
	Message save(long id);
}
