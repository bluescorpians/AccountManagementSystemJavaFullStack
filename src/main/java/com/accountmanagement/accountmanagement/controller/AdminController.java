package com.accountmanagement.accountmanagement.controller;


import java.lang.annotation.Repeatable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.accountmanagement.accountmanagement.model.Admin;
import com.accountmanagement.accountmanagement.model.UserAccount;
import com.accountmanagement.accountmanagement.repository.UserRepository;
import com.accountmanagement.accountmanagement.service.UserService;

@Controller
@RequestMapping("/admin")

public class AdminController {
	
@Autowired
UserService us;
//@Autowired
UserAccount user=new UserAccount();
@Autowired
UserRepository ur;



@RequestMapping("/nayaform")
public ModelAndView olisehjfoidsfj() {
	
return  new ModelAndView("nayaform");
}

@GetMapping("/home")
public String adminhome() {
	return "adminmainpage";
}

	@PostMapping("/login")
	 public ModelAndView login(@ModelAttribute() Admin login, Model m) {
		  String uname = login.getUsername();
		  String pass = login.getPassword();
		  System.out.println("uname and password is "+ uname+" "+pass);
		  if(uname.equals("admin") && pass.equals("kali")) {
		   m.addAttribute("uname", uname);
		   m.addAttribute("pass", pass);
		  
		   this.getClass().getSimpleName();
		   return new ModelAndView ("adminmainpage");
		  }
		  m.addAttribute("error", "Incorrect Username & Password");
		  return new ModelAndView ("admininvalid");
		  
	}
	private ModelAndView show() {
		return  new ModelAndView ("admincustlist");
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveData(@ModelAttribute("user") UserAccount  user)
	{
		
		user.setIsapproved("YES");
		 us.saveData(user);
return new ModelAndView("create");
	}
	@GetMapping("/fetch")
	public ModelAndView listuser(ModelAndView m)
	{
	
		
		System.out.println("details"+us.alluserdetails());
		// httpServletRequest.setAttribute("userdetails", us.alluserdetails());
		System.out.println("admin");
		// problem started 
		m.addObject("userdetails", us.alluserdetails());
		m.setViewName("admincustlist");
		// problem ended 
		return  m;
	}
	@RequestMapping("/approve")
	public ModelAndView Approve(ModelAndView m) {
//		List<UserAccount> k=us.getAll();
//		m.addObject("love",k);
		m.addObject("love", us.alluserdetails2());
		m.setViewName("showpending");
		return m;
	}

	@RequestMapping(value= "/appr", method=RequestMethod.GET)
	public String apprByAccountNumber(@RequestParam("acc_num") long anum,@RequestParam("acc_num") String kkk) {
		UserAccount k=us.userdetails(anum);
		k.setIsapproved("YES");
		us.saveData(k);
//		us.deleteByAccountNumber(kkk);
		return "redirect:/admin/approve";
	}
	
	@RequestMapping(value= "/deny", method=RequestMethod.GET)
	public String denyByAccountNumber(@RequestParam("acc_num") String anum) {
//		us.del(anum);
		us.deleteByAccountNumber(anum);
		return "redirect:/admin/approve";
	}
	
	@RequestMapping(value= "/fpd/appr", method=RequestMethod.GET)
	public String apprByAccountNumbefr(@RequestParam("acc_num") long anum,@RequestParam("acc_num") String kkk) {
		UserAccount k=us.userdetails(anum);
		k.setIsapproved("fpdapproved");
		us.saveData(k);
//		us.deleteByAccountNumber(kkk);
		return "redirect:/admin/forgetpassword";
	}
	
	@RequestMapping(value= "/fpd/deny", method=RequestMethod.GET)
	public String denyByAccountNumbfer(@RequestParam("acc_num") Long anum) {
		UserAccount k=us.userdetails(anum);
		k.setIsapproved("fpddeny");
		us.saveData(k);
		return "redirect:/admin/forgetpassword";
	}
	
	
	@RequestMapping("dpending")
	public String dpending(ModelMap m) {
		ArrayList<UserAccount> users=new ArrayList<UserAccount>();
		List<UserAccount> k=ur.findAll();
		for(UserAccount user:k) {
			System.out.println(user.getPerson_name()+" and isapproved is "+user.getIsapproved());
			if(user.getIsapproved().equals("request")) {
			users.add(user);
			}
		}
		System.out.println("dao");
//		return ur.findAll();
		System.out.println("size of users are "+users.size());
		m.addAttribute("love", users);
		return "showdelpending";
	}
	
	@RequestMapping("finish")
	public String findi(@RequestParam("anum") String anum) {
		us.deleteByAccountNumber(anum);
		return "redirect:/admin/dpending";
	}
	
	@RequestMapping("/forgetpassword")
	public ModelAndView fpd(ModelAndView m) {
		m.addObject("love", us.alluserdetails3());
		m.setViewName("fpd");
		return m;
	}
	
	@RequestMapping("/resetpd")
	public String resetpd(@RequestParam("anum") Long anum ,@RequestParam("pd") String pd) {
		UserAccount k=us.userdetails(anum);
		k.setIsapproved("YES");
		k.setPassword(pd);
		us.saveData(k);
		return "pdresetok";
	
	}
	

}