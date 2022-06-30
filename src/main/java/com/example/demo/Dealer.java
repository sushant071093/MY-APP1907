package com.example.demo;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import static org.springframework.hateoas.server.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.ControllerLinkBuilder.methodOn;
import static org.springframework.hateoas.server.mvc.ControllerLinkBuilder.* ;

import static org.springframework.hateoas.server.mvc.ControllerLinkBuilder.* ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.ControllerLinkBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
@Controller
public class Dealer {
	private static final Object failure = "*";
	@Autowired
	private ReceipeService rs;
	@Autowired
	private Springjdbc jdbc;
	
	

	
	@GetMapping(path = "/git/{path}")
	public String gitCourse(@PathVariable String path,ModelMap model) {
	System.out.println(path);
	 int i=1;
	 int j=1001;
	 List<GIT> content = jdbc.git();
	
	  for(GIT a:content)
	  { model.addAttribute(String.valueOf(i), a.getContent()); 
	  i++;
	  }
	  for(GIT a:content)
	  { model.addAttribute(String.valueOf(j), a.getPath()); 
	  j++;
	  }
	 
	 model.addAttribute("list", content);
	 model.addAttribute("path", path);
	 model.addAttribute("total", String.valueOf(i));
	 return "git";
		 
		
	}
	
	
	
	
	@GetMapping(path = "/login")
	public ModelAndView login() {
		return new ModelAndView("login","credential",new credential1());
			
	}
	
	@GetMapping(path = "/contactUs")
	public ModelAndView contactUs() {
		return new ModelAndView("contactUs","contactUs",new contactUs());
			
	}
	
	 @RequestMapping(value = "/submission", method = RequestMethod.POST)
		public String submission(@Valid @ModelAttribute("contactUs")contactUs creden,
			      BindingResult result, ModelMap model) {
		 if (result.hasErrors()) {
		        model.put("submit", failure);
		            return "contactUs";
		        }
	 jdbc.contactUs(creden);
	 model.addAttribute("name", creden.getName());
	 return "contactUs";
	 }
	
	 @RequestMapping(value = "/validated", method = RequestMethod.GET)
		public String firstPage() {
		 return "FirstPage";
	 }
	 @RequestMapping(value = "/upsc/{path}", method = RequestMethod.GET)
		public String upsc(@PathVariable String path , ModelMap model) {
		 int i=1;
		 int j=1001;
		 List<UPSC> content = jdbc.upsc(path);
		 System.out.println(content);
		
		  for(UPSC a:content)
		  { model.addAttribute(String.valueOf(i), a.getContent()); 
		  i++;
		  }
		  for(UPSC a:content)
		  {String param=a.getSubject()+"/"+a.getPath();
			  model.addAttribute(String.valueOf(j), param); 
		  j++;
		  }
		  model.addAttribute("totalPath", String.valueOf(j));
		 model.addAttribute("list", content);
		 model.addAttribute("total", String.valueOf(i));
		 return "upsc";
	 }
	 @RequestMapping(value = "/conicSection", method = RequestMethod.GET)
		public String conicSection(ModelMap model) {
		 int i=1;
		 int j=1001;
		 List<conicSection> content = jdbc.conicSection();
		
		  for(conicSection a:content)
		  { model.addAttribute(String.valueOf(i), a.getContent()); 
		  i++;
		  }
		  for(conicSection a:content)
		  { model.addAttribute(String.valueOf(j), a.getPath()); 
		  j++;
		  }
		  model.addAttribute("totalPath", String.valueOf(j));
		 model.addAttribute("list", content);
		 model.addAttribute("total", String.valueOf(i));
		 return "conicSection";
	 }
	 @GetMapping(path = "/conicSection/{path}")
		public String conicSectionCourse(@PathVariable String path,ModelMap model) {
		System.out.println(path);
		 int i=1;
		 int j=1001;
		 if(path.equalsIgnoreCase("circle")) {
		 List<circle> content = jdbc.circle();
		 
		  for(circle a:content)
		  { model.addAttribute(String.valueOf(i), a.getContent()); 
		  i++;
		  }
		  for(circle a:content)
		  { model.addAttribute(String.valueOf(j), a.getPath()); 
		  j++;
		  }
		 
		 model.addAttribute("list", content);
		 model.addAttribute("path", path);
		 model.addAttribute("total", String.valueOf(i));
		 return "circle";
		 
		 } 
			return "conicSection";
		}
	 
	 @RequestMapping(value = "/git", method = RequestMethod.GET)
		public String git(ModelMap model) {
		 int i=1;
		 int j=1001;
		 List<GIT> content = jdbc.git();
		
		  for(GIT a:content)
		  { model.addAttribute(String.valueOf(i), a.getContent()); 
		  i++;
		  }
		  for(GIT a:content)
		  { model.addAttribute(String.valueOf(j), a.getPath()); 
		  j++;
		  }
		  model.addAttribute("totalPath", String.valueOf(j));
		 model.addAttribute("list", content);
		 model.addAttribute("total", String.valueOf(i));
		 return "git";
	 }
	 

	 
	 
	 @RequestMapping(value = "/Profile", method = RequestMethod.GET)
		public String Edit(ModelMap model) {
		 
		 List<credential1> qw = jdbc.validate();
		 model.addAttribute("fname", qw.get(0).getFirstName());
	        model.addAttribute("lname", qw.get(0).getLastName());
	        model.addAttribute("email", qw.get(0).getEmail());
	        model.addAttribute("password", qw.get(0).getPassword());
	        return "print";
	 }
	
	 @RequestMapping(value = "/validated", method = RequestMethod.POST)
	public String submit2(@Valid @ModelAttribute("credential")credential1 creden,
		      BindingResult result, ModelMap model) {
		 model.addAttribute("name","");
		
		  List<credential1> qw = jdbc.validate();
		  System.out.println(qw);
		  System.out.println(qw.get(0).getPassword());
		  System.out.println(creden.getPassword());
		  for(credential1 a: qw) {
		   
			  if(a.getPassword().equals(creden.getPassword()))
		  { model.addAttribute("name",a.getFirstName());
				  return "FirstPage"; }}
		  String message="Incorrect Password or UserId(EMAIL)";
		 model.put("message",message );
		 
		 return "login";
		 }
		  	
	
	@GetMapping(path="/Registered")
	public ModelAndView register(ModelMap model) {
		return new  ModelAndView("Registration","credential",new credential());
	}
	
	 @RequestMapping(value = "/Registered", method = RequestMethod.POST)
	    public String submit1(@Valid @ModelAttribute("credential")credential creden,
	      BindingResult result, ModelMap model,HttpSession session) {
	        if (result.hasErrors()) {
	        model.put("submit", failure);
	            return "Registration";
	        }
	        jdbc.credential(creden);
	        model.addAttribute("fname", creden.getFirstName());
	        model.addAttribute("lname", creden.getLastName());
	        model.addAttribute("email", creden.getEmail());
	        model.addAttribute("password", creden.getPassword());
	        return "print";
	 }
	
	  @RequestMapping(value = "/from", method = RequestMethod.GET)
	    public ModelAndView showForm(ModelMap model) {
		  List<String> genderList = new ArrayList<>();
		  genderList.add("");
		  genderList.add("Male");
		  genderList.add("Female");
		  genderList.add("Other");
		  
		  List<String> disableList=new ArrayList<>();
		  disableList.add("Yes");
		  disableList.add("No");
		  model.put("disableList", disableList);
		  model.put("genderList", genderList);
	        return new ModelAndView("form", "employee", new Employee());
	    }
	 
	    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	    public String submit(@Valid @ModelAttribute("employee")Employee employee, 
	      BindingResult result, ModelMap model) {
	        if (result.hasErrors()) {
	            return "error";
	        }
	        
	        jdbc.employee(employee)	;
	        model.addAttribute("name", employee.getName());
	        model.addAttribute("contactNumber", employee.getContactNumber());
	        model.addAttribute("id", employee.getId());
	        model.addAttribute("gender",employee.getGender());
	        return "employeeView";
	    }
	
	    @GetMapping(path="/upscSubject")
		public ModelAndView upscSubject(ModelMap model) {
			return new  ModelAndView("upscSubject","UPSC",new UPSC());
		}

	    @PostMapping(path="/search")
		public String searchResult(@Valid @ModelAttribute("credential")UPSC content,
			      BindingResult result, ModelMap model){
			
			List<UPSC> searchRest=jdbc.search(content.getContent());
			System.out.println(searchRest);
			 int i=1;
			 int j=1001;
			
			  for(UPSC a:searchRest)
			  { model.addAttribute(String.valueOf(i), a.getContent()); 
			  i++;
			  }
			  for(UPSC a:searchRest)
			  {String param=a.getSubject()+"/"+a.getPath();
				  model.addAttribute(String.valueOf(j), param); 
			  j++;
			  }
			  model.addAttribute("totalPath", String.valueOf(j));
			 model.addAttribute("list", searchRest);
			 model.addAttribute("total", String.valueOf(i));
			return "search";
		}
	
	
	
	
	
	
	@PostMapping(path="/addreceipe")
	public ResponseEntity<Void> upDate(@RequestBody Receipe recip){
		
		Receipe re= rs.save(recip);
		
		URI location =ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(re.getId()).toUri();
		
		return ResponseEntity.created(location).build();
	}
	
	@GetMapping(path="start")
			public String Starting() {
		/*
		 * ModelAndView mv = new ModelAndView(); Object message = null;
		 * mv.addObject("message", message); mv.setViewName("home"); return mv;
		 */
		return "excel";
	}
	@GetMapping(path="home")
	public String hello() {
		return "home";
	}
	@GetMapping(path="process")
	public String process() {
		return "process";
	}
	@GetMapping(path="form")
	public String form() {
		return "form";
	}
	@GetMapping(path="/addreceipe/{id}")
	public EntityModel<Receipe> getByID(@PathVariable int id) {
		Receipe r=rs.getById(id);
		if(r == null) 
			throw new NotFound("id:"+id);
	EntityModel<Receipe> resource = new EntityModel<Receipe>(r);
	@SuppressWarnings("deprecation")
	ControllerLinkBuilder link=linkTo(methodOn(this.getClass()).getAll());
	resource.add(link.withRel("all-receipe"));
		return resource;
	}
	@GetMapping(path="/getreceipe")
	public List<Receipe> getAll(){
		return rs.getAll();
	}
@GetMapping(path="/trying" ,produces = "application/json") //consumes = "application/json")
@ApiResponses(value={
	@ApiResponse(code=205,message = "Passes Successfully"),
	@ApiResponse(code=400,message="Failed")
})
@ApiOperation(value="userdetails",notes="fetching details of a user")
@ResponseStatus(code=HttpStatus.ACCEPTED)


public user name(
	@ApiParam(value="name of the user",name="name",required=true,type="String",example="sushant")@RequestParam String name,
	@ApiParam(value="name of the user",name="name11",required=true,type="String")@RequestParam String name11,
	@ApiParam(value="name of the user",required=true)@RequestBody Receipe rr,
	@ApiParam(value="details",required=true)@RequestHeader String help)


{
	
	user u = new user(name);
	return u;
	
	
	
}

}