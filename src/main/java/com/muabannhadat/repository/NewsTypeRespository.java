
package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.NewsTypeEntity;

@Repository("newsTypeRespository")
public interface NewsTypeRespository extends JpaRepository<NewsTypeEntity, Long>{
	NewsTypeEntity findOneByCode(String code);
}