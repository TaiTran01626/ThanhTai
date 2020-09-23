package com.muabannhadat.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.muabannhadat.constants.Constant;
import com.muabannhadat.entity.PackageTypeEntity;
import com.muabannhadat.model.Message;
import com.muabannhadat.model.PageModel;
import com.muabannhadat.model.PostNewModel;
import com.muabannhadat.model.UserModel;
import com.muabannhadat.service.NewsTypeService;
import com.muabannhadat.service.PostnewService;
import com.muabannhadat.service.RoleService;
import com.muabannhadat.service.UserService;
import com.muabannhadat.utils.UTF8Control;
import com.muabannhadat.validator.UserValidator;

@Controller
public class MainController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	UserValidator userValidator;
	@Autowired
	PostnewService postnewService;
	@Autowired
	NewsTypeService newsTypeService;

	Locale locale = Locale.getDefault();
	ResourceBundle resourceBundle = ResourceBundle.getBundle(Constant.RS, new UTF8Control());

	@RequestMapping(value = { "/language", "/user/language" })
	public String languagePage(@RequestParam("lang") String lang, HttpServletRequest request) {
		Locale.setDefault(new Locale(lang.substring(0, 2), lang.substring(3)));
		resourceBundle = ResourceBundle.getBundle(Constant.RS, new UTF8Control());
		return "redirect:/";

	}

	@RequestMapping(value = "/home")
	public String homePage(Model model, @RequestParam("page") int page, @RequestParam("limit") int limit) {
		PageModel pageModel = new PageModel();
		pageModel.setPage(page);
		pageModel.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		pageModel.setTotalItem(postnewService.getTotalItem());
		pageModel.setPostNewsEntities(postnewService.getAll(pageable));
		pageModel.setTotalPage((int) Math.ceil(pageModel.getTotalItem() / pageModel.getLimit()));
		PackageTypeEntity entity = new PackageTypeEntity();
		entity.setPost(postnewService.getByVipCus(pageable));
		model.addAttribute("packagetype", entity);
		model.addAttribute("pageModel", pageModel);
		return "index";
	}

	@RequestMapping(value = "/")
	public String indexPage(Model model) {
		Pageable pageable = new PageRequest(0, 3);
		PackageTypeEntity entity = new PackageTypeEntity();

		entity.setPost(postnewService.getByVipCus(pageable));
		model.addAttribute("packagetype", entity);
		model.addAttribute("pageable", pageable);
		return "index";
	}

	@RequestMapping(value = "/register")
	public String registerPage(Model model) {
		UserModel userModel = new UserModel();
		model.addAttribute(userModel);
		return "register";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage() {
		return "lienhe";
	}

	@RequestMapping(value = "/guide", method = RequestMethod.GET)
	public String guidePage() {
		return "guide";
	}

	@RequestMapping(value = "/post_news")
	public String postNewsPage() {
		return "redirect:/user/post_news";
	}

	

	@RequestMapping(value = { "/logout", "/user/logout","/admin/logout" }, method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/home?page=1&limit=3";
	}

	@RequestMapping(value = "/search")
	public String searchPost(Model model, HttpSession session) {
		PostNewModel postNew = new PostNewModel();
		model.addAttribute("postNew", postNew);
		session.setAttribute("types", newsTypeService.getAll());
		return "timkiem";
	}


	@RequestMapping(value = "/inforUser", method = RequestMethod.GET)
	public String inforPage(Model model) {
		return "redirect:/user/inforUser";
	}
	@InitBinder
	protected void initBinder(WebDataBinder dataBinder) {
		
		// Form mục tiêu
		Object target = dataBinder.getTarget();
		if (target == null) {
			return;
		}
		if (target.getClass() == UserModel.class) {
			dataBinder.setValidator(userValidator);
		}
	}

	@GetMapping(value = "/checkUser")
	@ResponseBody
	public Message checkUser(@ModelAttribute @Validated UserModel userModel, BindingResult result) {
		Message respone = new Message();
		if (result.hasErrors()) {
			Map<String, String> errors = new HashMap<String, String>();
			
			for (FieldError error : result.getFieldErrors()) {
				errors.put(error.getField(), resourceBundle.getString(error.getCode()));
			}
			respone.setValidated(false);
			respone.setErrorMessages(errors);
			return respone;
		}
		
		return userService.saveUser(userModel);
	}
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public String accessDenied() {
		return "redirect:/login?accessDenied";
	}

	@RequestMapping("*")
	public ModelAndView erro() {
		return new ModelAndView("404");
	}
	
	
}
