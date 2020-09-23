package com.muabannhadat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.ImagesEntity;
@Repository("imageRespository")
public interface ImageRespository extends JpaRepository<ImagesEntity, Long>{	

}
