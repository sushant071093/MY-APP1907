package com.example.demo;

import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.TYPE;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;

@Target({TYPE,FIELD,ANNOTATION_TYPE})
@Constraint(validatedBy = passwordValidator.class)
@Retention(RUNTIME)
@Documented


public @ interface validPassword{
	String message() default "password is not valid as per password rule";
	Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
