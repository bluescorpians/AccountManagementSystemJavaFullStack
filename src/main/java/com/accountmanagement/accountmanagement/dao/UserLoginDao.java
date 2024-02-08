package com.accountmanagement.accountmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.accountmanagement.accountmanagement.model.UserLogin;

import com.accountmanagement.accountmanagement.model.UserAccount;
import com.accountmanagement.accountmanagement.repository.UserLoginRepository;
import com.accountmanagement.accountmanagement.repository.UserRepository;

@Component
public class UserLoginDao {
@Autowired
UserRepository ur;
UserLoginRepository ulr;
public String getData(long anum,UserAccount user)
{
	java.util.Optional<UserAccount> u=ur.findById(anum);
	UserAccount u1=u.get();
	String pass=u1.getPassword();
	return pass;
}
public void saveData (List<UserLogin> user) {
	
	   ulr.saveAll(user);
	  
	  
	  }
public String getData1(long anum,UserLogin user)
{
	java.util.Optional<UserLogin> u=ulr.findById(anum);
	UserLogin u1=u.get();
	String pass=u1.getPassword();
	return pass;
}
}
