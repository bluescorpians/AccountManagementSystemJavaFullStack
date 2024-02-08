package com.accountmanagement.accountmanagement.repository;



import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.stereotype.Repository;

import com.accountmanagement.accountmanagement.model.UserAccount;


@Repository
public interface UserRepository extends JpaRepository<UserAccount, Long> {

}
