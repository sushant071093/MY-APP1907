package com.example.demo;
import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
@ControllerAdvice
@RestController
public class ResponseHandlerException extends ResponseEntityExceptionHandler {
	@ExceptionHandler(NotFound.class)
	
	public ResponseEntity<Object> handleAllException(NotFound uc,WebRequest req){
		ExceptionResponse ec = new ExceptionResponse(uc.getMessage(),new Date(),req.getDescription(false));
		return new ResponseEntity<>(ec,HttpStatus.NOT_FOUND);
	}

}
