package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.RoleEntity;
@Service
public interface RoleService {
	public List<RoleEntity> getAll();
	public RoleEntity getRole(String strole);

}
