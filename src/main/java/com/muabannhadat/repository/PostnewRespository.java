package com.muabannhadat.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.PostNewsEntity;

@Repository("postnewRespository")
public interface PostnewRespository extends JpaRepository<PostNewsEntity, Long> {
	
	@Query("SELECT p FROM PostNewsEntity p WHERE end_day > now()")
	List<PostNewsEntity> findAll();
	
	@Query("SELECT p FROM PostNewsEntity p WHERE end_day > now()  and status='0'")
	Page<PostNewsEntity> findAllUnapproved(Pageable pageable);
	
	@Query("SELECT p FROM PostNewsEntity p WHERE end_day > now()  and status='1'")
	Page<PostNewsEntity> findAll(Pageable pageable);

	List<PostNewsEntity> findAllByStatus(String status);
	
	@Query ("SELECT p FROM PostNewsEntity p WHERE user.id = :id and p.end_day < now()")
	List<PostNewsEntity> findPostNewsExpOfUser(@Param("id") long id);

	@Query("SELECT p FROM PostNewsEntity p WHERE end_day > now() and type = 1 and status='1'")
	List<PostNewsEntity> findAllByVipCus(Pageable pageable);
	
	
@Query("SELECT p FROM PostNewsEntity p WHERE (p.news.id = :news_id or :news_id='') and (p.detail.area = :area or :area='') and (p.detail.address like %:address% or :address='') and (p.detail.price between :priceFrom and :priceTo or:priceFrom='' or :priceTo='' ) ")
	List<PostNewsEntity> findAllBySearch(@Param("news_id") long news_id, @Param("area") int area,@Param("address") String address,@Param("priceFrom") double priceFrom,@Param("priceTo") double priceTo);


@Query("SELECT p FROM PostNewsEntity p WHERE (p.news.id = :news_id or :news_id='') and (p.detail.area = :area or :area='') and (p.detail.address like %:address% or :address='') and (p.detail.price between :priceFrom and :priceTo or :priceFrom='' or :priceTo='' ) ")
List<PostNewsEntity> findAllBySearch1(@Param("news_id") long news_id, @Param("area") int area,@Param("address") String address,@Param("priceFrom") double priceFrom,@Param("priceTo") double priceTo, Pageable pageable );


}
