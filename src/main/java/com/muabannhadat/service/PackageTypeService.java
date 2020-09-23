package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.PackageTypeEntity;
@Service
public interface PackageTypeService {
	List<PackageTypeEntity> getAll();
	PackageTypeEntity getByCode(String code);
	int getById(long id);
}
