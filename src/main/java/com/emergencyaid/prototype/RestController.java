package com.emergencyaid.prototype;

import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class RestController {

	@Autowired
	DatabaseInfo di;
	
	  @RequestMapping(value="/viewUserByName",method=RequestMethod.GET, produces="application/json" ,headers="Accept=application/json")
	  //@RequestParam(value = "fname") String fname
	  @ResponseBody
	  public  List<User> viewByName(@RequestParam(value = "fname") String fname){ 
		  List<User> list= di.viewByName(fname) ;
			System.out.println(fname);
			  ListIterator<User> iterator = list.listIterator(); while (iterator.hasNext())
			  { User i = iterator.next(); System.out.println(i.getUsername()); }
			return list;
		 
		  }
}
