package com.muabannhadat.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.PostNewsEntity;

@Repository("statisticsRepository")
public interface StatisticsRepository extends JpaRepository<PostNewsEntity, Long>{
	@Query("SELECT p From PostNewsEntity p WHERE p.start_day between :startDate and :endDate and p.status = '1'")
List<PostNewsEntity> findAllByend_dateBetween(@Param("startDate") Date startDate,@Param("endDate") Date endDate);
}
