package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.PackageTypeEntity;
@Repository("packageTypeRespository")
public interface PackageTypeRespository extends JpaRepository<PackageTypeEntity, Long>{
	
	PackageTypeEntity findOneByCode(String code);
}
