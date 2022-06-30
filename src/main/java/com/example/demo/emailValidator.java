package com.example.demo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/*
 * import java.lang.annotation.Documented; import
 * java.lang.annotation.Retention; import java.lang.annotation.Target;
 * 
 * import javax.validation.Constraint;
 */
public class emailValidator implements ConstraintValidator<validEmail, String>{
	
	private Pattern pattern;
	private Matcher matcher;
	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	 @Override
	    public void initialize(final validEmail constraintAnnotation) {
	    }
	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		pattern=Pattern.compile(EMAIL_PATTERN);
		matcher=pattern.matcher(value);
		return matcher.matches();
	}
	
	
	
	
}
 

