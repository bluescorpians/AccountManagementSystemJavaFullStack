package com.accountmanagement.accountmanagement.controller;
import java.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.accountmanagement.accountmanagement.model.Transaction;
import com.accountmanagement.accountmanagement.model.UserAccount;
import com.accountmanagement.accountmanagement.repository.TransactionRepository;
import com.accountmanagement.accountmanagement.repository.UserRepository;
import com.accountmanagement.accountmanagement.service.UserService;


@Controller
@RequestMapping("/useraccount")
public  class UserController 
 {
	@Autowired
	UserService us;
//	@Autowired
	UserAccount user=new UserAccount();
	@Autowired
	TransactionRepository tr;
	@Autowired
	UserRepository ur;
	
	
				
	public ModelAndView showUserPage() {
		//System.out.println(this.getClass().getSimpleName() + ":=======>Showing CustomerMain Page.");
		
        return new ModelAndView("custmainpage"); // Here index is a jsp page name
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveData(@ModelAttribute("user") UserAccount  user,ModelMap m)
	{
		
		user.setIsapproved("NO");
		ur.save(user);
		m.addAttribute("love", user.getAcc_num());
		return "track";
	}
	
	
	
//	@RequestMapping(value =  "/delete" , method = RequestMethod.GET)
//	public String deleteTodo(@RequestParam int id){
//	//	boolean done =service.deleteTodo(id);
//		repository.deleteById(id);
//		// if(done)
//		return "redirect:/todo";
//		// return "redirect:/login";
//	}


	
	@RequestMapping(value= "/accdelete", method=RequestMethod.GET)
	public String deleteByAccountNumber(@RequestParam("acc_num") String anum) {
		us.deleteByAccountNumber(anum);
		return "redirect:/admin/fetch";
	}
	
	
	
	
	
	
	 @PostMapping("/withdraw") 
		public ModelAndView withdraw(@RequestParam("acc_num") String anum ,@RequestParam("amount") String withdrawamt) {
		System.out.println("withdraw amount");	
		int balance=us.getamt(Long.parseLong(anum));
		String pname=us.userdetails(Long.parseLong(anum)).getPerson_name();
		Transaction t=new Transaction(Long.parseLong(anum),LocalDateTime.now(),"ATM withdrawl",Long.parseLong(withdrawamt),"Debit");
		tr.save(t);
			int withdraw=Integer.parseInt(withdrawamt);
			if((balance-500)<withdraw) {
				return new ModelAndView("insufficient");
			}
			else {
			balance-=withdraw;
			us.setamt(Long.parseLong(anum),balance);
			return new ModelAndView("trans");}
		}
	 
	 @PostMapping("/transfer") 
		public ModelAndView transfer(@RequestParam("acc_num1") String anum1 ,@RequestParam("acc_num2") String anum2,@RequestParam("amount") String withdrawamt) {
		System.out.println("Transfer amount");	
		int yourbalance=us.getamt(Long.parseLong(anum1));
		int recpbalance=us.getamt(Long.parseLong(anum2));		
			int withdraw=Integer.parseInt(withdrawamt);
			if((yourbalance-500)<withdraw) {
				return new ModelAndView("insufficient");
			}
			else {
			yourbalance-=withdraw;
			String pname1=us.userdetails(Long.parseLong(anum1)).getPerson_name();
			Transaction t1=new Transaction(Long.parseLong(anum1),LocalDateTime.now(),"Transfered to "+anum2,Long.parseLong(withdrawamt),"Debit");
			tr.save(t1);
			recpbalance+=withdraw;
			String pname2=us.userdetails(Long.parseLong(anum2)).getPerson_name();
			Transaction t2=new Transaction(Long.parseLong(anum2),LocalDateTime.now(),"Deposited by "+anum1,Long.parseLong(withdrawamt),"Credit");
			tr.save(t2);
			us.setamt(Long.parseLong(anum1),yourbalance);
			us.setamt(Long.parseLong(anum2),recpbalance);
			return new ModelAndView("trans");}
		}
	@PostMapping("/deposit") 
	public ModelAndView deposit(@RequestParam("anum") String anum,@RequestParam("amount") String withdrawamt) {
		int balance=us.getamt(Long.parseLong(anum));
		balance+=Long.parseLong(withdrawamt);
		String pname=us.userdetails(Long.parseLong(anum)).getPerson_name();
		Transaction t=new Transaction(Long.parseLong(anum),LocalDateTime.now(),"Bank Deposit",Long.parseLong(withdrawamt),"Credit");
		tr.save(t);
		us.setamt(Long.parseLong(anum),balance);
		return new ModelAndView("trans");
	}
	
	@GetMapping("/fetch")
	public ModelAndView listuser(@RequestParam("acc_num") long anum, ModelAndView sumit)
	{
		UserAccount userdetail=us.userdetails(anum);
		sumit.addObject("userdetail",userdetail);
		sumit.setViewName("custdetails");
		
		return sumit;
		
	}
	
	@GetMapping("/fpsd")
	public ModelAndView listudfser()
	{
		return new ModelAndView("forgetpassword");
		
	}
	@PostMapping("/forgetpsd")
	public ModelAndView fpd(@RequestParam("anum") Long anum) {
		UserAccount k=ur.getById(anum);
		k.setIsapproved("fpd");
		ur.save(k);
		return new ModelAndView("track3");
	}
	
	@GetMapping("/checkstatus")
	public String checkstatus(@RequestParam("anum")Long anum) {
		if(ur.getById(anum).getIsapproved().equals("fpd"))return "track3";
		else if(ur.getById(anum).getIsapproved().equals("fpddeny"))return "fpddeny";
		else if(ur.getById(anum).getIsapproved().equals("fpdapproved"))return "resetpd";
		else return "forgetpassword";
	}
		
	}

