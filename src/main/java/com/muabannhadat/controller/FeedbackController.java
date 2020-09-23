package com.muabannhadat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.muabannhadat.model.FeedbackModel;
import com.muabannhadat.service.FeedbackService;
import com.muabannhadat.service.UserService;
@Controller
public class FeedbackController {
	@Autowired
	UserService userService;
	@Autowired
	FeedbackService feedbackService;
	@GetMapping(value = "/savefeedback")
	@ResponseBody
	public FeedbackModel feedback(FeedbackModel feedback, long id) {
		
		return feedbackService.saveFeedback(feedback,id);
		
	}

}
