package com.muabannhadat.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.model.PostNewModel;

@Service
public interface PostnewService {

	List<PostNewsEntity> getAll(Pageable pageable);

	List<PostNewsEntity> getByNewsType(String code);

	List<PostNewsEntity> getByVipCus(Pageable pageable);

	PostNewsEntity getOne(long id);

	int getTotalItem();

	List<PostNewsEntity> getAll();

	List<PostNewsEntity> getPostNewsExpOfUser(long id);

	List<PostNewsEntity> getAllNewsBySearch(long id, int area, String address, double priceFrom, double priceTo);

	List<PostNewsEntity> getAllNewsBySearch1(long id, int area, String address, double priceFrom, double priceTo,
			Pageable pageable);

	public void savePostnew(PostNewModel newModel, MultipartFile[] file);

	// Hop
	//void savePostnew(PostNewsEntity postnews);

	List<PostNewsEntity> findAll();

	void save(PostNewsEntity postNewsEntity);

	void delete(Long id);

	PostNewsEntity viewDetail(Long id);

	Integer count();

	void browseArticles(Long id);

	List<PostNewsEntity> findAll(Pageable pageable);


}
