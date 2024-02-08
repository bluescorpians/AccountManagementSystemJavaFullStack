package com.accountmanagement.accountmanagement.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UserLogin")
public class UserLogin {
	@Id
	Long acc_num;
	String Password;
	String role;
	boolean enable;
	public Long getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(Long acc_num) {
		this.acc_num = acc_num;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	@Override
	public String toString() {
		return "UserLogin [acc_num=" + acc_num + ", Password=" + Password + ", role=" + role + ", enable=" + enable
				+ "]";
	}
	public UserLogin() {
		super();
	}
	public UserLogin(Long acc_num, String password, String role, boolean enable) {
		super();
		this.acc_num = acc_num;
		Password = password;
		this.role = role;
		this.enable = enable;
	}
	
	
	
	

}
