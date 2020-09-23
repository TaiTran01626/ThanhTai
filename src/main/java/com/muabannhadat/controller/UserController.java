package com.muabannhadat.controller;


import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.muabannhadat.entity.NewsPostedEntity;
import com.muabannhadat.entity.PostNewsEntity;
import com.muabannhadat.entity.UsersEntity;
import com.muabannhadat.model.PostNewModel;
import com.muabannhadat.service.CommentService;
import com.muabannhadat.service.FeedbackService;
import com.muabannhadat.service.FeedbackTypeService;
import com.muabannhadat.service.ImageService;
import com.muabannhadat.service.NewsPostedService;
import com.muabannhadat.service.NewsTypeService;
import com.muabannhadat.service.PackageTypeService;
import com.muabannhadat.service.PostnewService;
import com.muabannhadat.service.RoleService;
import com.muabannhadat.service.UserService;
import com.muabannhadat.validator.PostnewValidator;
import com.muabannhadat.validator.UserValidator;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	ImageService imageService;
	@Autowired
	PostnewValidator postnewValidator;
	@Autowired
	UserValidator userValidator;
	@Autowired
	PostnewService postnewService;
	@Autowired
	NewsTypeService newsTypeService;
	@Autowired
	PackageTypeService packageTypeService;
	@Autowired
	FeedbackService feedbackService ;
	@Autowired
	FeedbackTypeService feedbackTypeService;
	@Autowired
	CommentService commentService;
	@Autowired
	NewsPostedService newsPostedService;
	
	
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String indexPage(Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		UsersEntity usersEntity = userService.findOne(username);
		List<NewsPostedEntity> listPosted = newsPostedService.getNewsPostedOfUser(usersEntity.getId());
		List<PostNewsEntity> listPostNews  = usersEntity.getPostnews();
		List<PostNewsEntity> listPostNewsExp =  postnewService.getPostNewsExpOfUser(usersEntity.getId());
		model.addAttribute("posted",listPosted);
		model.addAttribute("postNews",listPostNews);
		model.addAttribute("postNewsExp",listPostNewsExp);
		return "index_User";

	}



	
	@RequestMapping(value = "/getImage/{id}")
	public void getImage(HttpServletResponse response, @PathVariable("id") long id) throws Exception {
		response.setContentType("image/png");
		byte[] bs = imageService.getOne(id).getImage();
		InputStream inputStream = new ByteArrayInputStream(bs);
		IOUtils.copy(inputStream, response.getOutputStream());
	}


	
	
	
	@RequestMapping(value = "/inforUser", method = RequestMethod.GET)
	public String inforPage(Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		UsersEntity usersEntity = userService.findOne(username);
		model.addAttribute("infor",usersEntity);
		return "infor";
		
	}
	
	
	
	@InitBinder
	protected void initBinder(WebDataBinder dataBinder) {

		// Form mục tiêu
		Object target = dataBinder.getTarget();
		if (target == null) {
			return;
		}

		if (target.getClass() == PostNewModel.class) {
			dataBinder.setValidator(postnewValidator);
		}
	}
	@RequestMapping(value = "/savepostnew", method = RequestMethod.POST)
	public String submit(@ModelAttribute("postNew") @Validated PostNewModel newModel, BindingResult result,
			@RequestParam("file") MultipartFile[] file) {
		if (result.hasErrors()) {
			return "PostBan";
		}

		postnewService.savePostnew(newModel,file);
		return "redirect:/user/home";
		
	}

	
	@RequestMapping(value = "/post_news")
	public String postNewsPage(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getName().equalsIgnoreCase("anonymousUser")) {
			return "login";
		}
		PostNewModel postNew = new PostNewModel();
		model.addAttribute("postNew", postNew);
		session.setAttribute("types", newsTypeService.getAll());
		session.setAttribute("packages", packageTypeService.getAll());
		return "PostBan";

	}
	
	
	

}
