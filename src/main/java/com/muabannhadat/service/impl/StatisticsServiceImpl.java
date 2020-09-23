package com.muabannhadat.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.repository.StatisticsRepository;
import com.muabannhadat.service.StatisticsService;

@Repository("statisticsService")
public class StatisticsServiceImpl implements StatisticsService {
	@Autowired
	StatisticsRepository statisticsRepository;
	public static List<String> days;
	public static List<Long> value;
	public static String startDate;
	public static String endDate;
	public static String startDate2;
	public static String endDate2;

	@Override
	public void reportReceipt(String startDate, String endDate) {
		// thongke day value
		// List<thongke>

		days = new ArrayList<String>();
		value = new ArrayList<Long>();
		// day value
		try {
			SimpleDateFormat formater;
			formater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date startDay = formater.parse(startDate + " 00:00:00");
			
			Date endDay = formater.parse(endDate + " 23:59:59");
			
			Calendar start = Calendar.getInstance();
			start.setTime(startDay);

			Calendar end = Calendar.getInstance();
			end.setTime(endDay);

			List<PostNewsEntity> liPostNewsEntities = statisticsRepository.findAllByend_dateBetween(startDay, endDay);

			for (Date date = start.getTime(); start.before(end); start.add(Calendar.DATE, 1), date = start.getTime()) {
				long totalInComeInADay = 0;
				for (PostNewsEntity postNewsEntity : liPostNewsEntities) {
					if (date.getDate() == postNewsEntity.getStart_day().getDate()) {
						try {
							if (postNewsEntity.getType().getCode().equalsIgnoreCase("VIP")) {
								totalInComeInADay += Long.parseLong(postNewsEntity.getType().getPrice())
										* (TimeUnit.MILLISECONDS.toDays(postNewsEntity.getEnd_day().getTime()
												- postNewsEntity.getStart_day().getTime()));
							} else if (postNewsEntity.getType().getCode().equalsIgnoreCase("THUONG")) {
								totalInComeInADay += Long.parseLong(postNewsEntity.getType().getPrice())
										* (TimeUnit.MILLISECONDS.toDays(postNewsEntity.getEnd_day().getTime()
												- postNewsEntity.getStart_day().getTime()));
							}
						} catch (Exception e) {
						}
					}
				}
				formater = new SimpleDateFormat("dd-MM");
				days.add("'" + formater.format(date) + "'");
				value.add(totalInComeInADay);
			}
			formater = new SimpleDateFormat("dd-MM-yyyy");
			StatisticsServiceImpl.startDate = formater.format(startDay);
			StatisticsServiceImpl.endDate = formater.format(endDay);
			formater = new SimpleDateFormat("yyyy-MM-dd");
			StatisticsServiceImpl.startDate2 = formater.format(startDay);
			StatisticsServiceImpl.endDate2 = formater.format(endDay);
		} catch (java.text.ParseException e) {
			e.printStackTrace();
		}

	}

}