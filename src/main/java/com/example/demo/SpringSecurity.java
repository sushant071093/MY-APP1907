package com.example.demo;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.web.bind.annotation.CrossOrigin;
@Configuration
@EnableWebSecurity
@CrossOrigin(origins="http://localhost:4200")

public class SpringSecurity extends WebSecurityConfigurerAdapter{
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.csrf().disable()
			.authorizeRequests()
			.antMatchers(HttpMethod.OPTIONS,"/**").permitAll()
			.anyRequest().authenticated()
			


				.and()
			//.formLogin().and()
			.httpBasic();
		
		http.headers().frameOptions().disable();
		//http.authorizeRequests().antMatchers("/h2/*").permitAll();


	}

}
