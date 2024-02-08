package com.accountmanagement.accountmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.accountmanagement.accountmanagement.model.Transaction;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

}
