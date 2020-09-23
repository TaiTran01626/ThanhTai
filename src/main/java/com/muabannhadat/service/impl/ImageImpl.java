package com.muabannhadat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.muabannhadat.entity.ImagesEntity;
import com.muabannhadat.repository.ImageRespository;
import com.muabannhadat.service.ImageService;

@Repository("imageService")
public class ImageImpl implements ImageService{

	@Autowired
	ImageRespository imageRespository;
	
	@Override
	@Transactional
	public List<ImagesEntity> getAll() {
		// TODO Auto-generated method stub
		return imageRespository.findAll();
	}

	@Override
	@Transactional
	public void save(ImagesEntity entity) {
		imageRespository.save(entity);
		
	}

	@Override
	public ImagesEntity getOne(long id) {
		return imageRespository.findOne(id);
	}

	


}
