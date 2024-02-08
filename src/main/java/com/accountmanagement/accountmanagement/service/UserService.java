package com.accountmanagement.accountmanagement.service;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accountmanagement.accountmanagement.dao.UserDao;
import com.accountmanagement.accountmanagement.model.UserAccount;


@Service
public class UserService {
	@Autowired
	UserDao ud;
	
	public UserAccount userdetails(long anum) {
		return ud.userdetails(anum).get();
		

	}
	public List<UserAccount> alluserdetails() {
		return ud.alluserdetails();
		

	}
	public List<UserAccount> alluserdetails2() {
		return ud.alluserdetails2();
	}
	public List<UserAccount> alluserdetails3() {
		return ud.alluserdetails3();
	}


	public UserAccount saveData(UserAccount user) {

		return ud.saveData(user);

	}
	
	
	
	
	public int getamt(long anum) {
		return ud.getamt(anum);
	}
	public String getpass(long anum) {
		return ud.getpass(anum);
	}

public void setamt(long anum,int amt) {

		ud.setamt(anum,amt);
		
	}
public void deleteByAccountNumber(String anum) {
	// TODO Auto-generated method stub
	long accnumber=Long.parseLong(anum);
	ud.deleteByAccountNumber(accnumber);
	
}
}
