package com.accountmanagement.accountmanagement.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.tomcat.jni.Mmap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.accountmanagement.accountmanagement.model.Transaction;
import com.accountmanagement.accountmanagement.model.UserAccount;
import com.accountmanagement.accountmanagement.model.UserLogin;
import com.accountmanagement.accountmanagement.repository.TransactionRepository;
import com.accountmanagement.accountmanagement.repository.UserRepository;
import com.accountmanagement.accountmanagement.service.UserService;

@Controller
@RequestMapping("/userlogin")

public class UserLoginController {
	@Autowired
	TransactionRepository tr;
	@Autowired
	UserRepository ur;
	@Autowired
	UserService us;
	//@Autowired
	UserAccount usac= new UserAccount();
	//@Autowired
	UserLogin ul=new UserLogin();
	@RequestMapping("/customerhomepage")
	public ModelAndView custmain(@RequestParam("acc_num") long anum) {
		return showcustomermain(anum);
	}
	public ModelAndView showcustomermain(long anum) {
		ModelAndView m = new ModelAndView();
		System.out.println(us.userdetails(anum));
		m.addObject("userdetails", us.userdetails(anum));
		m.setViewName("custmainpage");
		
		this.getClass().getSimpleName()  ;
		return m; // Here index is a jsp page name
	}
	public ModelAndView showcustomerlogin() {
		this.getClass().getSimpleName()  ;
		return new ModelAndView("custinvalid"); // Here index is a jsp page name
	}
	
	@GetMapping("/validate")
	public ModelAndView getData(@RequestParam("acc_num") String anum,@RequestParam("password") String password)
	{
		
		String checkpass= us.getpass(Long.parseLong(anum));
		
		if (checkpass.equals(password) && ur.getById(Long.parseLong(anum)).getIsapproved().equals("YES")) {
		return	showcustomermain(Long.parseLong(anum));
		}
		
		else if (checkpass.equals(password) && ur.getById(Long.parseLong(anum)).getIsapproved().equals("request")) {
			return	showcustomermain(Long.parseLong(anum));
			}
		else if (checkpass.equals(password) && ur.getById(Long.parseLong(anum)).getIsapproved().equals("NO")) {
				return new ModelAndView("track");
			}
		else {
			return new ModelAndView("custinvalid");
		}
	}
	
	public ModelAndView showbalance(long anum) {
		ModelAndView m = new ModelAndView();
		System.out.println(us.userdetails(anum));
		m.addObject("user", us.userdetails(anum));
		m.setViewName("custdetails");
		
		this.getClass().getSimpleName()  ;
		return m; // Here index is a jsp page name
	}
	
	@GetMapping("/showbalance")
	public ModelAndView getData(@RequestParam("acc_num") String anum)
	{

			return showbalance(Long.parseLong(anum));
	}
	
	@GetMapping("/cdetails")
	public ModelAndView cdetails(@RequestParam("acc_num") Long anum)
	{
		ModelAndView m = new ModelAndView();
		System.out.println(us.userdetails(anum));
		m.addObject("user", us.userdetails(anum));
		m.setViewName("customerdetails");

			return m;
	}
	
	/*
	 * public List<Transaction> sortlist(List<Transaction> t ) { Collections.sort(t,
	 * new Comparator<Transaction>(){ public int compare(Transaction o1, Transaction
	 * o2){ if(o1.getLdt().equals(o2.getLdt())) return 0; return
	 * o1.getLdt().isBefore(o2.getLdt()) ? -1 : 1; } }); return t; }
	 */
	
	@RequestMapping("/transactionhistory")
	public String transaction(ModelMap m,@RequestParam("acc_num") Long anum) {
		
		List<Transaction> k=tr.findAll();
		List<Transaction> kk=new ArrayList<>();
		for(Transaction x:tr.findAll()) {
//			System.out.println(x.getDesc());
			if(x.getAccounthit().equals(anum))kk.add(x);
		}
		
		
		m.addAttribute("love",kk);
		
		return "transactionhistory";
	}
	
	
	@RequestMapping("cdelete")
	public String cdelte(@RequestParam("acc_num") Long anum) {
		UserAccount k=ur.findById(anum).get();
		if(k.getIsapproved().equals("request"))return "track2";
		k.setIsapproved("request");
		ur.save(k);
		return "track2";
	}
	
	

}
