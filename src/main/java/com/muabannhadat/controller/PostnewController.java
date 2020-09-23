package com.muabannhadat.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.muabanhadat.ajax.PostNewResponse;
import com.muabanhadat.ajax.SearchResponse;
import com.muabannhadat.entity.FeedbackEntity;
import com.muabannhadat.entity.ImagesEntity;
import com.muabannhadat.entity.PostDetailEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.model.CommentModel;
import com.muabannhadat.model.Message;
import com.muabannhadat.model.PageModel;
import com.muabannhadat.model.PostNewModel;
import com.muabannhadat.service.FeedbackTypeService;
import com.muabannhadat.service.ImageService;
import com.muabannhadat.service.NewsPostedService;
import com.muabannhadat.service.PostnewService;
import com.muabannhadat.service.UserService;

@Controller
public class PostnewController {
	@Autowired
	PostnewService postnewService;
	@Autowired
	FeedbackTypeService feedbackTypeService;
	@Autowired
	ImageService imageService;
	@Autowired
	UserService userService;
	@Autowired
	NewsPostedService newsPostedService;

	@RequestMapping(value = "/showAllNews")
	public String showAllNews(Model model, @RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel pageModel = new PageModel();
		pageModel.setPage(page);
		pageModel.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		pageModel.setTotalItem(postnewService.getTotalItem());
		pageModel.setPostNewsEntities(postnewService.getAll(pageable));
		pageModel.setTotalPage((int) Math.ceil(pageModel.getTotalItem() / pageModel.getLimit()));
		model.addAttribute("posts", postnewService.getAll(pageable));
		model.addAttribute("pageModel", pageModel);
		return "show_all_news";
	}

	@RequestMapping(value = { "/showDetail", "/user/showDetail" })
	public String showDetail(Model model, long id) {
		model.addAttribute("post", postnewService.getOne(id));
		model.addAttribute("feedbacktype", feedbackTypeService.findAll());
		model.addAttribute("feedback", new FeedbackEntity());
		model.addAttribute("comment", new CommentModel());
		// model.addAttribute("comment", new CommentEntity());
		return "single";
	}

	@RequestMapping(value = "/getImage/{id}")
	public void getImage(HttpServletResponse response, @PathVariable("id") long id) throws Exception {
		response.setContentType("image/png");
		byte[] bs = imageService.getOne(id).getImage();
		InputStream inputStream = new ByteArrayInputStream(bs);
		IOUtils.copy(inputStream, response.getOutputStream());
	}

//	@RequestMapping(value = "/searchAdvance")
//	public String search(@ModelAttribute("postNew") PostNewModel postNewModel, Model model) {
//		PostNewsEntity postNewsEntity = new PostNewsEntity();
//		BeanUtils.copyProperties(postNewModel, postNewsEntity);
//		PostDetailEntity detailEntity = new PostDetailEntity();
//		BeanUtils.copyProperties(postNewModel.getDetail(), detailEntity);
//		List<PostNewsEntity> postNewsEntities = postnewService.getAllNewsBySearch(postNewsEntity.getNews().getId(),
//				detailEntity.getArea(), detailEntity.getAddress(), postNewsEntity.getPriceFrom(),
//				postNewsEntity.getPriceTo());
//		model.addAttribute("search", postNewsEntities);
//		return "timkiem";
//
//	}
	@GetMapping(value = "/searchAdvanceAj")
	@ResponseBody
	public SearchResponse search(PostNewModel postNewModel) {
		SearchResponse response = new SearchResponse();
		System.out.println("ok");

		PostNewsEntity postNewsEntity = new PostNewsEntity();
		BeanUtils.copyProperties(postNewModel, postNewsEntity);
		PostDetailEntity detailEntity = new PostDetailEntity();
		BeanUtils.copyProperties(postNewModel.getDetail(), detailEntity);

		List<PostNewsEntity> postNewsEntities = postnewService.getAllNewsBySearch(postNewsEntity.getNews().getId(),
				detailEntity.getArea(), detailEntity.getAddress(), postNewsEntity.getPriceFrom(),
				postNewsEntity.getPriceTo());
		List<PostNewResponse> newResponses = new ArrayList<PostNewResponse>();
		for (PostNewsEntity postNewsEntity2 : postNewsEntities) {
			PostNewResponse newResponse = new PostNewResponse();
			newResponse.setId(postNewsEntity2.getId());
			newResponse.setTitle(postNewsEntity2.getTitle());
//			newResponse.setTitle("Thanh Tai");
			newResponse.setImagesEntities(postNewsEntity2.getDetail().getImages());
			newResponse.setS_date(postNewsEntity2.getStart_day().toString());
			newResponse.setPrice(postNewsEntity2.getDetail().getPrice());
			newResponse.setArea(postNewsEntity2.getDetail().getArea());
			newResponse.setAddress(postNewsEntity2.getDetail().getAddress());
			newResponse.setCode("<div class='col-md-3 md-col' style='margin-top: 30px'>"
					+ "<div class='col-md' style='background: rgba(0, 0, 0, 0.4); box-shadow: 2px 2px 16px 0px black'>"
					+ "<div> <i class='fas fa-home' style='color: white;'>" + newResponse.getTitle()
					+ "</i><span><i style='float: right; color: white;' class='far fa-calendar-alt'>"
					+ newResponse.getS_date() + "</i></span>" + "</div>" + "<div class='clearfix'></div>"
					+ "<div class='col-md_img'>" + "<div class='banner'>" + "<div class='slider'>"
					+ "<ul class='rslides' id='slider2'>"
					// TODO
					+ display(newResponse.getImagesEntities()) + "</ul>	</div>	</div>	</div>"
					+ "<div class='top-content'>" + "<h5> <a style='color: white;' href='+showDetail?id="
					+ newResponse.getId() + "></a>" + "</h5>	<h5 style='padding: 0px; margin-top: -9px;'>"
					+ "<i class='fas fa-compass' style='color: white;'>" + newResponse.getAddress() + "</i>	</h5>"
					+ "<h5 style='padding: 0px; margin-top: 4px;'>"
					+ "<i class='fab fa-laravel'	style='color: white; padding: 0px; margin-top: -9px;'>"
					+ newResponse.getArea() + "m<sup>2</sup>" + "</i></h5>	<div class='white'>"
					+ "<a id='luuthongtin' class='hvr-shutter-in-vertical hvr-shutter-in-vertical2'>"
					+ "<springmess:message code='label.savepost' /></a>" + "<a	href='showDetail?id="
					+ newResponse.getId() + "	style='cursor: unset; background: black;' id='xemchitiet'"
					+ "class='hvr-shutter-in-vertical hvr-shutter-in-vertical2'>"
					+ "<springmess:message code='label.showdetail' /> </a>" + "<p class='dollar'>" + "<span>"
					+ newResponse.getPrice() + "</span><span>Triệu</span><span	class='in-dollar'>VNĐ</span>"
					+ "</p> <div class='clearfix'></div></div></div></div></div>");
			newResponses.add(newResponse);
		}
		response.setValidated(true);
		response.setNewResponses(newResponses);
		return response;

	}

	public String display(List<ImagesEntity> imagesEntities) {
		String st = "";
		for (ImagesEntity imagesEntity : imagesEntities) {
			st+="<li><img src='getImage/" + imagesEntity.getId()+"'"
					+ " alt='' style='height: 253px'></li>";
		}
		return st;

	}

	// Luu Tin
	@RequestMapping(value = "/savePostedAj", method = RequestMethod.GET)
	@ResponseBody
	public Message savePostedAj(Long id) {

		return newsPostedService.save(id);

	}

}
