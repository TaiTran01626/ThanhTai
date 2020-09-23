package com.muabannhadat.service;

import org.springframework.stereotype.Service;

@Service
public interface StatisticsService {
void reportReceipt(String startDate,String endDate);
}
