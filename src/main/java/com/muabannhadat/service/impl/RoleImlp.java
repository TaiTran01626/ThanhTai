package com.muabannhadat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.RoleEntity;
import com.muabannhadat.repository.RoleRespository;
import com.muabannhadat.service.RoleService;

@Repository("roleService")
public class RoleImlp implements RoleService {

	@Autowired
	private RoleRespository roleRepository;

	@Override
	public List<RoleEntity> getAll() {
		return roleRepository.findAll();
	}

	@Override
	public RoleEntity getRole(String strole) {
		for (RoleEntity roleEntity : getAll()) {

			if (roleEntity.getCode().equalsIgnoreCase(strole)) {
				return roleEntity;
			}
		}
		return null;
	}

}
