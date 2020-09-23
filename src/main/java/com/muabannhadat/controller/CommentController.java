package com.muabannhadat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.muabannhadat.model.CommentModel;
import com.muabannhadat.service.CommentService;
import com.muabannhadat.service.UserService;

@Controller
public class CommentController {
	@Autowired
	CommentService commentService;
	@Autowired
	UserService userService;

	@GetMapping(value = "/savecomment")
	@ResponseBody
	public CommentModel comment(CommentModel comment,long id) {
		return commentService.saveComment(comment,id);
	}
}
