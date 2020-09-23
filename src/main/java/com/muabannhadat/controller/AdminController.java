package com.muabannhadat.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
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
import org.springframework.web.servlet.ModelAndView;

import com.muabanhadat.ajax.StatusResponse;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.model.PageModel;
import com.muabannhadat.service.CommentService;
import com.muabannhadat.service.FeedbackService;
import com.muabannhadat.service.ImageService;
import com.muabannhadat.service.PostnewService;
import com.muabannhadat.service.StatisticsService;
import com.muabannhadat.service.UserService;
import com.muabannhadat.service.impl.StatisticsServiceImpl;
import com.muabannhadat.validator.PostnewValidator;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	// chuyen den trang admin khi dang nhap thanh cong
	@Autowired
	PostnewService postnewService;
	@Autowired
	PostnewValidator userValidator;
	@Autowired
	FeedbackService feedbackService;
	@Autowired
	CommentService commentService;
	@Autowired
	UserService userService;
	@Autowired
	StatisticsService statisticsService;
	@Autowired
	ImageService imageService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginAdminPage() {
		return "index_Admin";

	}



	@RequestMapping(value = "/manager_category_Admin", method = RequestMethod.GET)
	public String managerCategoryAdminPage() {
		return "manager_category_Admin";

	}
	@RequestMapping(value = "/getImage/{id}")
	public void getImage(HttpServletResponse response, @PathVariable("id") long id) throws Exception {
		response.setContentType("image/png");
		byte[] bs = imageService.getOne(id).getImage();
		InputStream inputStream = new ByteArrayInputStream(bs);
		IOUtils.copy(inputStream, response.getOutputStream());
	}

	@RequestMapping(value = "/list-post-news", method = RequestMethod.GET)
	public ModelAndView getListPostNews(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel model = new PageModel();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("manager_product_chothue");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setPostNewsEntities(postnewService.getAll(pageable));
		model.setTotalItem(postnewService.count());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;

	}

//	@RequestMapping(value = "/search-post-news", method = RequestMethod.GET)
//	public ModelAndView getFindByNamePostNews(@RequestParam("page") int pageSearch, @RequestParam("limit") int limitSearch, @RequestParam("title") String title) {
//		PageModel model = new PageModel();
//		model.setPage(pageSearch);
//		model.setLimit(limitSearch);
//		ModelAndView mav = new ModelAndView("search_post_news?pageSearch=1&limitSearch=2");
//		Pageable pageable = new PageRequest(pageSearch - 1, limitSearch);
//		model.setPostNewsEntities(postnewService.findByName(pageable,title));
//		model.setTotalItem(postnewService.count());
//		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
//		mav.addObject("model", model);
//		return mav;
//		
//	}

	@RequestMapping("/delete-post-news")
	public String deletePostNews(@RequestParam Long id) {
		postnewService.delete(id);
		return "redirect:/";
	}

	@RequestMapping("/view-detail-post-news")
	public String viewDetail(Model model, Long id) {
		PostNewsEntity postNewsEntity = postnewService.viewDetail(id);
		model.addAttribute("postNews", postNewsEntity);
		System.out.println(postNewsEntity.getDetail().getImages());
		return "single3";
	}

	@RequestMapping(value = "/list-feedback", method = RequestMethod.GET)
	public ModelAndView getListFeedback(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel model = new PageModel();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("feedback_Admin");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setFeedbackEntities(feedbackService.findAll(pageable));
		model.setTotalItem(feedbackService.count());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;

	}

//	@RequestMapping("/delete-feedback")
//	public String deleteFeedback(@RequestParam Long id) {
//		feedbackService.delete(id);
//		return "redirect:/";
//	}
//
//	@RequestMapping("/browse-articles")
//	public String browseArticles(@RequestParam Long id) {
//		feedbackService.browseArticles(id);
//		return "redirect:/";
//	}
//
//	@RequestMapping("/rehibilitate")
//	public String rehibilitate(@RequestParam Long id) {
//		feedbackService.rehibilitate(id);
//		return "redirect:/";
//	}

	@RequestMapping(value = "/list-comment", method = RequestMethod.GET)
	public ModelAndView getListComment(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel model = new PageModel();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("comment");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setCommentEntities(commentService.findAll(pageable));
		model.setTotalItem(commentService.count());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;

	}

	@RequestMapping("/delete-comment")
	public String deleteComment(@RequestParam Long id) {
		commentService.delete(id);
		return "redirect:/";
	}

	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam Long id) {
		userService.delete(id);
		return "redirect:/";
	}

	@RequestMapping(value = "/list-user", method = RequestMethod.GET)
	public ModelAndView getListUser(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel model = new PageModel();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("users");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setUsersEntities(userService.findAll(pageable));
		model.setTotalItem(userService.count());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;

	}

	@RequestMapping(value = "/list-unapproved-post", method = RequestMethod.GET)
	public ModelAndView getListBrowseArticles(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel model = new PageModel();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("browse_articles");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setPostNewsEntities(postnewService.findAll(pageable));
		model.setTotalItem(postnewService.count());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;

	}
//
//	@RequestMapping("/article-approval")
//	public String articleApproval(@RequestParam Long id) {
//		postnewService.browseArticles(id);
//		return "redirect:/";
//	}

	@RequestMapping("/test")
	public ModelAndView browseArticles() {
		ModelAndView mav = new ModelAndView("statistics");
		return mav;
	}

	@GetMapping(value = "/search-statistics")
	public ModelAndView search(String startDate,String endDate) {
		statisticsService.reportReceipt(startDate, endDate);
		ModelAndView mav = new ModelAndView("statistics");
		mav.addObject("listDays", StatisticsServiceImpl.days);
		mav.addObject("listValue", StatisticsServiceImpl.value);
		mav.addObject("startDate", StatisticsServiceImpl.startDate);
		mav.addObject("endDate", StatisticsServiceImpl.endDate);
		mav.addObject("startDate2", StatisticsServiceImpl.startDate2);
		mav.addObject("endDate2", StatisticsServiceImpl.endDate2);
		return mav;
	}
	@RequestMapping("/delete-feedback")
	@ResponseBody
	public StatusResponse deleteFeedback(Long id) {
		StatusResponse response = new StatusResponse();
		feedbackService.delete(id);
		response.setMessage("Phản Hồi Đã Được Xóa");
		return response;
	}
	@RequestMapping("/browse-articles")
	@ResponseBody
	public StatusResponse browseArticles(Long id) {
		StatusResponse response = new StatusResponse();
		feedbackService.browseArticles(id);
		response.setMessage("Phản Hồi Đã Được Duyệt, Bài Viết Đã Xóa");
		return response;
	}
	@RequestMapping("/rehibilitate")
	@ResponseBody
	public StatusResponse rehibilitate(Long id) {
		StatusResponse response = new StatusResponse();
		feedbackService.rehibilitate(id);
		response.setMessage("Phản Hồi Đã Được Duyệt, Bài Viết Đã Phục Hồi");
		return response;
	}
	@RequestMapping("/article-approval")
	@ResponseBody
	public StatusResponse articleApproval(Long id) {
		System.out.println(id);
		StatusResponse response = new StatusResponse();
		postnewService.browseArticles(id);
		response.setMessage("Bài Viết Đã Được Duyệt");
		return response;
	}
	


}
