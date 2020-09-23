package com.muabannhadat.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.NewsPostedEntity;
@Repository("newsPostedRespository")
public interface NewsPostedRespository extends JpaRepository<NewsPostedEntity, Long>{
	List<NewsPostedEntity> findAllByUser_id(long user_id);
	@Query ("SELECT p FROM NewsPostedEntity p WHERE p.user.id = :id group by post.id")
	List<NewsPostedEntity> findNewsPosted(@Param("id") long id);

}
