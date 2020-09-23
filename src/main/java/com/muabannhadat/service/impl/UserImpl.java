package com.muabannhadat.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.RoleEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.Message;
import com.muabannhadat.model.UserModel;
import com.muabannhadat.repository.UserRepository;
import com.muabannhadat.service.RoleService;
import com.muabannhadat.service.UserService;
@Repository("userService")
public class UserImpl implements UserService{
	@Autowired
	UserRepository userRepository;
	@Autowired
	RoleService roleService;


	@Override
	public List<UsersEntity> findAll() {
		return userRepository.findAll();
	}

	@Override
	public UsersEntity findUser(String email, String pass) {
		for (UsersEntity usersEntity : findAll()) {

			if (usersEntity.getEmail().equalsIgnoreCase(email)&&usersEntity.getPass().equals(pass)) {
				return usersEntity;
			}
		}
		return null;
	
	}

	@Override
	public UsersEntity findOne(String name, String status) {
		UsersEntity entity= userRepository.findOneByUsernameAndStatus(name, status);
		return entity;
	}

	@Override
	public UsersEntity findOne(String username) {
		
		return userRepository.findOneByUsername(username);
	}
	
	@Override
	public boolean checkUser(String username) {
		if(findOne(username)==null) {
			return true;
		}
		return false;
	}

	@Override
	public UsersEntity findOneByEmail(String email) {
		return userRepository.findOneByEmail(email);
	}

	@Override
	public boolean checkUserEmail(String email) {
		if(findOneByEmail(email)==null) {
			return true;
		}
		return false;
	}

	@Override
	public Message saveUser(UserModel userModel) {
		Message respone = new Message();
		
		respone.setValidated(true);
		UsersEntity us = new UsersEntity();
		BeanUtils.copyProperties(userModel, us, "username", "pass");
		us.setUsername(userModel.getUsername().toLowerCase());
		us.setPass(BCrypt.hashpw(userModel.getPass(), BCrypt.gensalt(12)));

		List<RoleEntity> role_id = new ArrayList<RoleEntity>();

		role_id.add(roleService.getRole("USER"));

		us.setRole(role_id);
		us.setStatus("1");
		userRepository.save(us);
		respone.setName("User " + userModel.getUsername() + " đã được tạo");
		return respone;
	}
	//Hop
	
	@Override
	public UsersEntity getByName(String userName) {
		return null;
	}

	@Override
	public void delete(Long id) {
		UsersEntity usersEntity = userRepository.findOne(id);
		usersEntity.setStatus("0");
		userRepository.save(usersEntity);

	}

	@Override
	public void delete(Long[] ids) {
		for (Long id : ids) {
			UsersEntity usersEntity = userRepository.findOne(id);
			usersEntity.setStatus("0");
			userRepository.save(usersEntity);
		}
	}

	@Override
	public Integer count() {
		return (int) userRepository.count();
	}


	@Override
	public List<UsersEntity> findAll(Pageable pageable) {
		return userRepository.findAll(pageable).getContent();
	}

	
}
