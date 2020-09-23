package com.muabannhadat.validator;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.muabannhadat.model.UserModel;
import com.muabannhadat.service.UserService;

@Component
public class UserValidator implements Validator {
	private EmailValidator emailValidator = EmailValidator.getInstance();
	@Autowired
	UserService userService;
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz == UserModel.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserModel user = (UserModel) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullname", "NotEmpty.registerForm.fullname");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.registerForm.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty.registerForm.username");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass", "NotEmpty.registerForm.pass");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "re_pass", "NotEmpty.registerForm.re_pass");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.registerForm.address");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthday", "NotEmpty.registerForm.birthday");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.registerForm.phone");
	
		// Lỗi trường email.
		if (!emailValidator.isValid(user.getEmail())&& !user.getEmail().equals("")) {
			errors.rejectValue("email", "Pattern.registerForm.email");
		}
		// Lỗi mật khẩu nhập lại không khớp với mật khẩu
		if (!user.getPass().equals(user.getRe_pass()) && !user.getRe_pass().equals("")) {
			errors.rejectValue("re_pass", "Pattern.registerForm.re_pass");
		}
		//lỗi username không được trùng
		if (!userService.checkUser(user.getUsername()) && !user.getUsername().equals("")) {
			errors.rejectValue("username", "Check.registerForm.username");
		}
		//lỗi email không được trùng
		if (!userService.checkUserEmail(user.getEmail()) && !user.getEmail().equals("")) {
			errors.rejectValue("email", "Check.registerForm.email");
		}
//		//Lỗi mật khẩu phải có ít nhất 1 số, 1 chữ thường , 1 chữ hoa, ít nhất 8 ký tự
		if (!user.getPass().matches("(^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$)") && !user.getPass().equals("")) {
			errors.rejectValue("pass", "Pattern.registerForm.pass");
		}
		//lỗi điện thoại phải là số và gồm 10 ký tự
		if(!user.getPhone().matches("(\\d{10})") && !user.getPhone().equals("")) {
			errors.rejectValue("phone", "Pattern.registerForm.phone");
		}
		//lỗi ngày sinh phải có dạng xx/xx/xxxx , x/x/xxxx hoặc xx-xx-xxxx, x-x-xxxx
		if(!user.getBirthday().matches("(\\d{1,2}[-|/]\\d{1,2}[-|/]\\d{4})")&& !user.getBirthday().equals("")) {
			errors.rejectValue("birthday", "Pattern.registerForm.birthday");
		}
	}

}
