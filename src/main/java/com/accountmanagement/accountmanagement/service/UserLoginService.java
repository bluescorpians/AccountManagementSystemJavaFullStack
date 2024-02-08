package com.accountmanagement.accountmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.accountmanagement.accountmanagement.model.UserLogin;
import com.accountmanagement.accountmanagement.dao.UserDao;
import com.accountmanagement.accountmanagement.dao.UserLoginDao;
import com.accountmanagement.accountmanagement.model.UserAccount;

@Service
public class UserLoginService {
	@Autowired
UserLoginDao uld;
	UserDao uad;
	public String getData(long anum,UserAccount user) {
		return uld.getData(anum,user);

	}
	public void saveData(List<UserLogin> user) {

		uld.saveData(user);

	}
	public String getData1(long anum,UserLogin user) {
		return uld.getData1(anum,user);

	}
}
