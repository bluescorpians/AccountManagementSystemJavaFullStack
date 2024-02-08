
package com.accountmanagement.accountmanagement.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.accountmanagement.accountmanagement.model.UserAccount;
import com.accountmanagement.accountmanagement.repository.UserRepository;
import com.accountmanagement.accountmanagement.service.UserService;
@RestController
public class WelcomeController {
	@Autowired
	UserService us;
	@Autowired
	UserRepository ur;
	
	@RequestMapping("/")
	public ModelAndView showMainPage() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing Home Page.");
		System.out.println(ur.count());
		return new ModelAndView("index"); // Here index is a jsp page name
	}
	@RequestMapping("/index")
	public ModelAndView showMkjainPage() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing Home Page.");
		return new ModelAndView("index"); // Here index is a jsp page name
	}

	@RequestMapping("/homepage")
	public ModelAndView showMainPage2() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing Home Page.");
		return new ModelAndView("mainpage"); // Here index is a jsp page name
	}
	@RequestMapping("/adminlogin")
	public ModelAndView showAdminmainPage() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("adminlogin"); // Here index is a jsp page name
	}

	@RequestMapping("/customer")
	public ModelAndView showCustomerPage() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("custacdetlist"); // Here index is a jsp page name
	}
	@RequestMapping("/customersignup")
	public ModelAndView showCustomersignup() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("custsignup"); // Here index is a jsp page name
	}
	
	@RequestMapping("/customersignin")
	public ModelAndView showCustomersignin() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("custlogin"); // Here index is a jsp page name
	}
	
	@RequestMapping("/customerdetails")
	public ModelAndView showCustomerdetails() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("custdetails"); // Here index is a jsp page name
	}
	
	@RequestMapping("/customerwithdraw")
	public ModelAndView showCustomerWithdraw(ModelAndView m,@RequestParam("acc_num") Long anum) {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		m.addObject("anum", anum);
		m.setViewName("custwithdraw");
		return m;// Here index is a jsp page name
	}
	@RequestMapping("/customerdeposit")
	public ModelAndView showCustomerdeposit(ModelAndView m,@RequestParam("acc_num") Long anum) {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		m.addObject("anum", anum);
		m.setViewName("custdeposit");
		return m;// Here index is a jsp page name
	}
	@RequestMapping("/customertransfer")
	public ModelAndView showCustomerTransfer(ModelAndView m,@RequestParam("acc_num") Long anum) {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		m.addObject("anum", anum);
		m.setViewName("transfer");
		return m;// Here index is a jsp page name
	}
	
	@RequestMapping("/customermainpage")
	public ModelAndView showCustomermainpage(@RequestParam("acc_num")Long anum,ModelAndView m) {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		UserAccount k=ur.findById(anum).get();
		
		m.addObject("userdetails", k);
		m.setViewName("custmainpage");
		return m;
//		return new ModelAndView("custmainpage"); // Here index is a jsp page name
	}
	@RequestMapping("/custaccsignin")
	public ModelAndView showCustaccsignin() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("accsignin"); // Here index is a jsp page name
	}
	@RequestMapping("/admincreate")
	public ModelAndView showaccountcreate() {
		System.out.println(this.getClass().getSimpleName() + ":=======>Showing AdminLogin Page.");
		return new ModelAndView("admincreate"); // Here index is a jsp page name
	}
	
	@RequestMapping("/dona")
	public ModelAndView house() {
		return new ModelAndView("pagla");
	}
	
	
	
	
}
