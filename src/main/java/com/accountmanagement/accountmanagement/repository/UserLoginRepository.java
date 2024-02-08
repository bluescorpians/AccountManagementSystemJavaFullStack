package com.accountmanagement.accountmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.accountmanagement.accountmanagement.model.UserLogin;

public interface UserLoginRepository extends JpaRepository<UserLogin,Long >{

}
