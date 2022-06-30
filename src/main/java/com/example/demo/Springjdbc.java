package com.example.demo;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;
@Repository
public class Springjdbc {
	@Autowired
    private JdbcTemplate jdbcTemplate;
	// jdbc.@queryForUpdate("");
	//userDetails user=new userDetails();
	
	public List<userDetails> fetch()
	{
		return jdbcTemplate.query("select * from user", new BeanPropertyRowMapper(userDetails.class));
		
	//	return  jdbcTemplate.queryForObject("select * from user", new BeanPropertyRowMapper(userDetails.class));
	}
	public int set(userDetails user) {
		return jdbcTemplate.update("insert into user (id,username,password)" +"values(?,?,?)", new Object[] {2,"susu","nil"});
	}
	
	public int employee(Employee e) {
		return jdbcTemplate.update("insert into employee (name,id,contactnumber)" +"values(?,?,?)", new Object[] {e.getName(),e.getId(),e.getContactNumber()});
	}
	 public int credential(credential c) {
		 return jdbcTemplate.update("insert into credential(FirstName,LastName,Email,Password)" + "values(?,?,?,?)", new Object[] {c.getFirstName(),c.getLastName(),c.getEmail(),c.getPassword()});
		 
	 }
	 public List<credential1> validate(){
		
		 
	return	 jdbcTemplate.query("select * from credential", new BeanPropertyRowMapper<credential1>(credential1.class));
		// return jdbcTemplate.query("select Email , Password from credential where  Email=?", new Object[] {c.getEmail()}, new BeanPropertyRowMapper(credential.class));
		 
		// return jdbcTemplate.queryForRowSet("select Password from credential where Email = ? ", new Object[] {c.getEmail()});
		// return jdbcTemplate.queryForObject("select Password from credential where Email like '?'", new Object[] {c.getEmail()}, new )
	 }
	 public List<GIT> git(){
		 return	 jdbcTemplate.query("select * from git", new BeanPropertyRowMapper<GIT>(GIT.class));
		 
	 }
	 public int contactUs(contactUs c) {
		 return jdbcTemplate.update("insert into contactUs(Name,Email,Query)" + "values(?,?,?)", new Object[] {c.getName(),c.getEmail(),c.getQuery()});
		 
	 }
	 public List<conicSection> conicSection(){
		 return	 jdbcTemplate.query("select * from conicSection", new BeanPropertyRowMapper<conicSection>(conicSection.class));
		 
	 }
	 public List<circle> circle(){
		 return	 jdbcTemplate.query("select * from circle", new BeanPropertyRowMapper<circle>(circle.class));
		 
	 }
	 public List<UPSC> upsc(String path){
		// return  (List<UPSC>) jdbcTemplate.queryForObject("select * from UPSC where subject=? ",new Object[]  {path}, new BeanPropertyRowMapper<UPSC>(UPSC.class));
		// return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class))
		 //return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class));
		 //return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class));
		return	 jdbcTemplate.query("select * from UPSC where subject like ? ",new Object[]  {path+'%'}, new BeanPropertyRowMapper<UPSC>(UPSC.class));
		 
	 }
      public List<UPSC> search(String path){
			// return  (List<UPSC>) jdbcTemplate.queryForObject("select * from UPSC where subject=? ",new Object[]  {path}, new BeanPropertyRowMapper<UPSC>(UPSC.class));
			// return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class))
			 //return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class));
			 //return jdbcTemplate.query("select * from UPSC where subject like '?'", path,  new BeanPropertyRowMapper<UPSC>(UPSC.class));
			return	 jdbcTemplate.query("select * from UPSC where content like ? ",new Object[]  {'%'+path+'%'}, new BeanPropertyRowMapper<UPSC>(UPSC.class));
			 
		 }
}
