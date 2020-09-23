package com.muabannhadat.service.impl;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.muabannhadat.entity.ImagesEntity;
import com.muabannhadat.entity.PostDetailEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.PostNewModel;
import com.muabannhadat.repository.PostnewRespository;
import com.muabannhadat.service.PostnewService;
import com.muabannhadat.service.UserService;

@Repository("postnewService")
public class PostnewImpl implements PostnewService {
	@Autowired
	UserService userService;
	@Autowired
	private PostnewRespository postnewRespository;


	@Override
	@Transactional
	public List<PostNewsEntity> getAll(Pageable pageable) {
		return postnewRespository.findAll(pageable).getContent();
	}

	@Override
	public List<PostNewsEntity> getByNewsType(String code) {
		NewsTypeImpl impl = new NewsTypeImpl();
		return impl.getByCode(code).getPost();
	}

	@Override
	public PostNewsEntity getOne(long id) {
		return postnewRespository.findOne(id);
	}

	@Override
	public List<PostNewsEntity> getByVipCus(Pageable pageable) {
		return postnewRespository.findAllByVipCus(pageable);
	}

	@Override
	public int getTotalItem() {
		return (int) postnewRespository.count();
	}

	@Override
	public List<PostNewsEntity> getAllNewsBySearch(long id, int area, String address, double priceFrom, double priceTo) {
//		PostNewsSpecification p = new PostNewsSpecification(new SearchCriteria("detail.area",":", "100"));
		
		return postnewRespository.findAllBySearch(id, area, address, priceFrom, priceTo);
	}
	@Override
	public List<PostNewsEntity> getAllNewsBySearch1(long id, int area, String address, double priceFrom, double priceTo, Pageable pageable) {
//		PostNewsSpecification p = new PostNewsSpecification(new SearchCriteria("detail.area",":", "100"));
		
		return postnewRespository.findAllBySearch1(id, area, address, priceFrom, priceTo, pageable);
	}
	@Override
	@Transactional
	public List<PostNewsEntity> getAll() {
		return postnewRespository.findAll();
	}

	@Override
	public List<PostNewsEntity> getPostNewsExpOfUser(long id) {
		return postnewRespository.findPostNewsExpOfUser(id);
	}

	@Override
	public void savePostnew(PostNewModel newModel, MultipartFile[] file) {
		PostNewsEntity entity = new PostNewsEntity();
		BeanUtils.copyProperties(newModel, entity);
		PostDetailEntity detailEntity = new PostDetailEntity();
		BeanUtils.copyProperties(newModel.getDetail(), detailEntity);
		
		// set Time
		Date sdate = new Date();
		entity.setStart_day(sdate);
		entity.setEnd_day(addDay(sdate, newModel.getNgay()));
	
		
		// add image
		detailEntity.setImages(addImage(file));
		entity.setDetail(detailEntity);
		
		entity.setStatus("0");
		//setUser
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		UsersEntity usersEntity = userService.findOne(username);
		entity.setUser(usersEntity);
		postnewRespository.save(entity);
		
	}
	private Date addDay(Date date, int ngay) {
		Calendar calendar = GregorianCalendar.getInstance();
		calendar.setTime(date);
		calendar.add(GregorianCalendar.DAY_OF_MONTH, ngay);
		Date date2 = calendar.getTime();
		return date2;
	}
	private List<ImagesEntity> addImage(MultipartFile[] file){
		List<ImagesEntity> entities = new ArrayList<ImagesEntity>();
		for (MultipartFile multipartFile : file) {

			ImagesEntity imagesEntity = new ImagesEntity();
			try {
				imagesEntity.setImage(multipartFile.getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			entities.add(imagesEntity);
		}
		return entities;
	}

//Hop

//	@Override
//	@Transactional
//	public void savePostnew(PostNewsEntity postnews) {
//		postnews.setStatus("0");
//		postnewRespository.save(postnews);
//	}

	@Override
	@Transactional
	public List<PostNewsEntity> findAll(Pageable pageable) {
		return postnewRespository.findAllUnapproved(pageable).getContent();
	}

	


	@Override
	public void save(PostNewsEntity postNewsEntity) {
		postnewRespository.save(postNewsEntity);
	}

	@Override
	public void delete(Long id) {
		PostNewsEntity entity = postnewRespository.getOne(id);
		entity.setStatus("2");
		postnewRespository.save(entity);

	}

	@Override
	public PostNewsEntity viewDetail(Long id) {
		return postnewRespository.findOne(id);
	}

	@Override
	public Integer count() {
		return (int) postnewRespository.count();
	}

	@Override
	public void browseArticles(Long id) {
		PostNewsEntity entity = postnewRespository.findOne(id);
		entity.setStatus("1");
		postnewRespository.save(entity);
	}

	public Long DateCalculation(String strDateFrom, String strDateTo) {
		Long getDaysDiff = null;
		try {
			DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date dateFrom = simpleDateFormat.parse(strDateFrom);
			Date dateTo = simpleDateFormat.parse(strDateTo);
			long getDiff = dateTo.getTime() - dateFrom.getTime();
			getDaysDiff = getDiff / (24 * 60 * 60 * 1000);

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return getDaysDiff;

	}

	@Override
	public List<PostNewsEntity> findAll() {
		return postnewRespository.findAll();
	}


	

}
