package com.muabannhadat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.muabannhadat.entity.PackageTypeEntity;
import com.muabannhadat.repository.PackageTypeRespository;
import com.muabannhadat.service.PackageTypeService;
@Repository("packageTypeService")
public class PackageTypeImpl implements PackageTypeService{

	@Autowired
	PackageTypeRespository packageTypeRespository;
	
	@Override
	@Transactional
	public List<PackageTypeEntity> getAll() {
		
		return packageTypeRespository.findAll();
	}
	

	@Override
	@Transactional
	public PackageTypeEntity getByCode(String code) {
		// TODO Auto-generated method stub
		return packageTypeRespository.findOneByCode(code);
	}


	@Override
	@Transactional
	public int getById(long id) {
		int price = Integer.parseInt(packageTypeRespository.getOne(id).getPrice());
		return price;
	}

}
