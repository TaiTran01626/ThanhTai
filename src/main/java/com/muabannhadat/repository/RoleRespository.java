package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.RoleEntity;
@Repository("roleRespository")
public interface RoleRespository extends JpaRepository<RoleEntity, Long>{
	
}
	