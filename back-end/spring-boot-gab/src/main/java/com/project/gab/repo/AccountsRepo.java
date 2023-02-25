package com.project.gab.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.project.gab.entity.Accounts;

import jakarta.transaction.Transactional;

public interface AccountsRepo extends CrudRepository<Accounts, Integer>, JpaRepository<Accounts, Integer> {
	@Query("select balance from Accounts where acctID = ?1")
	public int findBalanceByAcctID(int acctID);

	@Transactional
	@Modifying(clearAutomatically = true)
	@Query("update Accounts set balance = balance+?2 where acctID=?1")
	public void saveBalanceByAcctID(int acctID, int balance);

	@Transactional
	@Modifying(clearAutomatically = true)
	@Query("update Accounts set balance = balance-?2 where acctID=?1")
	public void withdrawAmountByAcctID(int acctID, int balance);

}
