package com;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.model.Customer;
import com.model.UserType;
import com.service.Service;

@RestController
public class mainController {
	@Autowired
	Service serve;
	
	@RequestMapping(value = "/start")
	public ModelAndView begin() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/register")
	public ModelAndView register(@ModelAttribute("loginattribute") Customer customer) {
		return new ModelAndView("register");
	}

	@RequestMapping(value = "/showcustomer")
	public ModelAndView showAllCustomers() {
		List<Customer> ls = (List<Customer>) serve.findAll();

		return new ModelAndView("showcustomer", "list", ls);
	}

	@RequestMapping(value = "/savemodule", method = RequestMethod.POST)
	public ModelAndView savemodule(@ModelAttribute("loginattribute") Customer customer) {
		serve.save(customer);

		return new ModelAndView("redirect:/showcustomer");
	}

	@RequestMapping(value = "/login")
	public ModelAndView goToLOginPage(@ModelAttribute("logincheck") UserType userType) {
		return new ModelAndView("loginpage");
	}

	@RequestMapping(value = "/checkit",method=RequestMethod.POST)
	public ModelAndView checkAndGo(@ModelAttribute("logincheck") UserType userType) {
		
		UserType u= serve.findByNameAndPassword(userType.getName(),userType.getPassword());
	 
		if(u!=null && userType.getRole().equals("admin") && userType.getRole().equals(u.getRole()))
	    	 return new ModelAndView("redirect:/register");
		else if(u!=null && userType.getRole().equals("user") && userType.getRole().equals(u.getRole()) )
	    	 return new ModelAndView("infopage");
		else
			return new ModelAndView("index","x",1);
	}

}
