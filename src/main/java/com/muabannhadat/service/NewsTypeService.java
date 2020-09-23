package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.NewsTypeEntity;
@Service
public interface NewsTypeService {

	List<NewsTypeEntity> getAll();
	NewsTypeEntity getByCode(String code);
}
