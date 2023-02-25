package com.project.gab.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Accounts {
	@Id
	@GeneratedValue
	private int id;
	
	private int acctID;
	private int balance;
	private String acctStatus;
	
	@ManyToOne
  	@JoinColumn(name = "user_id")
	public Customer useraccount;

	public Accounts() {

	}

	public Accounts(int acctID, int balance, String acctStatus) {
		super();
		this.acctID = acctID;
		this.balance = balance;
		this.acctStatus = acctStatus;
	}

	public int getAcctID() {
		return acctID;
	}

	public void setAcctID(int acctID) {
		this.acctID = acctID;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getAcctStatus() {
		return acctStatus;
	}

	public void setAcctStatus(String acctStatus) {
		this.acctStatus = acctStatus;
	}
}