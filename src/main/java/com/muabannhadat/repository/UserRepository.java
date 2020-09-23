package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.UsersEntity;
@Repository("userRepository")
public interface UserRepository extends JpaRepository<UsersEntity, Long>{


	public UsersEntity findOneByUsernameAndStatus(String username, String activeStatus);
	
	UsersEntity findOneByUsername(String username);
	UsersEntity findOneByEmail(String email);
	
	

}
