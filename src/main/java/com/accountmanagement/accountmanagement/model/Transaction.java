package com.accountmanagement.accountmanagement.model;

import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class Transaction {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;
	private Long accounthit;
	private LocalDateTime ldt;
	private String desc;
	private Long amt;
	private String type;
	public Long getAccounthit() {
		return accounthit;
	}
	public void setAccounthit(Long accounthit) {
		this.accounthit = accounthit;
	}
	public LocalDateTime getLdt() {
		return ldt;
	}
	public void setLdt(LocalDateTime ldt) {
		this.ldt = ldt;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Long getAmt() {
		return amt;
	}
	public void setAmt(Long amt) {
		this.amt = amt;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public Transaction() {
		super();
	}
	public Transaction(Long accounthit, LocalDateTime ldt, String desc, Long amt, String type) {
		super();
		this.accounthit = accounthit;
		this.ldt = ldt;
		this.desc = desc;
		this.amt = amt;
		this.type = type;
	}
	@Override
	public String toString() {
		return "Transaction [id=" + id + ", accounthit=" + accounthit + ", ldt=" + ldt + ", desc=" + desc + ", amt="
				+ amt + ", type=" + type + "]";
	}
	
}
