package com.example.demo;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.BeanWrapperImpl;
import org.springframework.hateoas.mediatype.PropertyUtils;

public class PasswordMatchesValidator implements ConstraintValidator<passwordMatcher, Object> {
	
	String firstValue;
	String secondValue;
	 @Override
	    public void initialize(final passwordMatcher constraintAnnotation) {
		 firstValue=constraintAnnotation.first();
		 secondValue=constraintAnnotation.second();
		 
		 
	    }
	@Override
	public boolean isValid(Object value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		/*
		 * credential cc = (credential) value; return
		 * cc.getPassword().equals(cc.getConfirmPassword());
		 */
		Object frst=new BeanWrapperImpl(value).getPropertyValue(firstValue);
		Object scnd= new BeanWrapperImpl(value).getPropertyValue(secondValue);
		return frst.equals(scnd);
		
		}

}
