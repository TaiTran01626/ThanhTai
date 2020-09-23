package com.muabannhadat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.muabannhadat.entity.FeedbackTypeEntity;

@Service
public interface FeedbackTypeService {
    public List<FeedbackTypeEntity> findAll();
}
