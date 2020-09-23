package com.muabannhadat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.muabannhadat.entity.NewsTypeEntity;
import com.muabannhadat.repository.NewsTypeRespository;
import com.muabannhadat.service.NewsTypeService;
@Repository("newsTypeService")
public class NewsTypeImpl implements NewsTypeService {

	@Autowired
	private NewsTypeRespository newsTypeRespository;

	@Override
	@Transactional
	public List<NewsTypeEntity> getAll() {
		return newsTypeRespository.findAll();
	}
	@Override
	@Transactional
	public NewsTypeEntity getByCode(String code) {
		
		return newsTypeRespository.findOneByCode(code);
	}
}
