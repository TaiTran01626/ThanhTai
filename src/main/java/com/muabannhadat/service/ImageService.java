package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.ImagesEntity;
@Service
public interface ImageService {
	List<ImagesEntity> getAll();
	void save(ImagesEntity entity);
	ImagesEntity getOne(long id);
}
