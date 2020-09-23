package com.muabannhadat.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.muabannhadat.model.PostNewModel;
//TODO
@Component
public class PostnewValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz == PostNewModel.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		PostNewModel postnew = (PostNewModel) target;
		ValidationUtils.rejectIfEmpty(errors, "title", "NotEmpty.registerForm.title");
		ValidationUtils.rejectIfEmpty(errors, "detail.address", "NotEmpty.registerForm.detail.address");
		ValidationUtils.rejectIfEmpty(errors, "detail.phone", "NotEmpty.registerForm.detail.phone");
		ValidationUtils.rejectIfEmpty(errors, "detail.price", "NotEmpty.registerForm.detail.price");
		if(postnew.getNgay()<=0)
			errors.rejectValue("ngay", "Pattern.registerForm.ngay");
		if (postnew.getDetail().getArea()<=0) {
			errors.rejectValue("detail.area", "Pattern.registerForm.detail.area");
		}
		
	}

}
