package com.emergencyaid.prototype;

import java.util.List;
import java.util.ListIterator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
@Autowired
DatabaseInfo di;

@RequestMapping("/") 
public ModelAndView homeform() {
	return new ModelAndView("home");
}

@RequestMapping(value="/adduser", method=RequestMethod.GET)
public ModelAndView showform() {
	return new ModelAndView("adduser", "command", new User());
}

@RequestMapping(value="/save", method=RequestMethod.POST)
public ModelAndView save(@ModelAttribute("u")User u){
	//di.insertUser(p);
//	System.out.println("User [username=" + u.getUsername() + ", password=" + u.getPassword() + ", firstName=" + u.getFirstName() + ", lastName="
//			+ u.getLastName() + ", sex=" + u.getSex() + ", date=" + u.getDate() + ", city=" + u.getCity() + "]");
	di.insertUser(u);
	return new ModelAndView("redirect:/viewuser");
}


  @RequestMapping("/viewuser") 
  public ModelAndView viewUser(){ 
	  List<User> list= di.viewAll(); 
	  return new ModelAndView("viewuser", "list", list); 
	  }
  

  
  @RequestMapping("/edituser/{username}")//User @PathVariable to get variable from the url
  public ModelAndView edit(@PathVariable String username) {
	  User u=di.userByUsername(username);
	  System.out.print(u.getFname());
	  ModelAndView model = new ModelAndView("edituserform","command",u);
	  model.addObject("oldusername", username);
	 return model;
  }
  
  @RequestMapping("/deleteuser/{username}")//User @PathVariable to get variable from the url
  public ModelAndView delete(@PathVariable String username) {
	  User u=di.userByUsername(username);
	  di.deleteUser(u);
	  return new ModelAndView("redirect:/viewuser");
  }
  
  @RequestMapping(value="/updateuser", method=RequestMethod.POST)
  public ModelAndView update(@ModelAttribute("u")User u, @RequestParam("oldusername") String oldusername){
	  try {
  	System.out.println("User [username=" + u.getUsername() + ", password=" + u.getPassword() + ", firstName=" + u.getFname() + ", lastName="
  			+ u.getLname() + ", sex=" + u.getSex() + ", date=" + u.getBdate() + ", city=" + u.getCity() + "]");
  	u.setUsername(u.getUsername());
  	u.setFname(u.getFname());
  	u.setLname(u.getLname());
  	u.setPassword(u.getPassword());
  	u.setSex(u.getSex());
  	u.setCity(u.getCity());
  	u.setBdate(u.getBdate());
  	di.updateUser(u, oldusername);
  	}
	  catch(Exception e) {
		  System.out.print(e.getMessage());
		
	  }
	  
	  return new ModelAndView("redirect:/viewuser");

  }
  
  

}
