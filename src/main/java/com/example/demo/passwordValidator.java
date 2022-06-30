package com.example.demo;

import java.util.Arrays;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.passay.AlphabeticalSequenceRule;
import org.passay.DigitCharacterRule;
import org.passay.LengthRule;
import org.passay.NumericalSequenceRule;
import org.passay.PasswordData;
import org.passay.PasswordValidator;
import org.passay.RuleResult;
import org.passay.SpecialCharacterRule;
import org.passay.UppercaseCharacterRule;
import org.passay.WhitespaceRule;


public class passwordValidator implements ConstraintValidator<validPassword, String>{

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		final PasswordValidator validator =new PasswordValidator(Arrays.asList(
				new LengthRule(6,30),
				new UppercaseCharacterRule(1),
				new DigitCharacterRule(1),
				new SpecialCharacterRule(1),
				new NumericalSequenceRule(3, false),
				new AlphabeticalSequenceRule(3, false),
				new WhitespaceRule()
				));
		 final RuleResult result = validator.validate(new PasswordData(value));
		 if(result.isValid()) {
		return true;
	}
		 else {
			 return false;
		 }

	}
}
