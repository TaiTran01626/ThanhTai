package com.muabannhadat.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.Message;
import com.muabannhadat.model.UserModel;

@Service
public interface UserService {


	public List<UsersEntity> findAll();

	public UsersEntity findUser(String email, String pass);

	public UsersEntity findOne(String name, String status);

	public UsersEntity findOne(String username);

	public UsersEntity findOneByEmail(String email);

	public boolean checkUser(String username);

	public boolean checkUserEmail(String email);

	public Message saveUser(UserModel userModel);
	// Hop

	UsersEntity getByName(String userName);

	void delete(Long id);

	void delete(Long[] ids);

	Integer count();

	public List<UsersEntity> findAll(Pageable pageable);

}
