package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.CommentEntity;
@Repository("commentRespository")
public interface CommentRespository extends JpaRepository<CommentEntity, Long>{
	

}

