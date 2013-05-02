/* 
 * Copyright (c) 2013 Manning Publications Co.
 * 
 * Book: http://manning.com/wheeler/
 * Blog: http://springinpractice.com/
 * Code: https://github.com/springinpractice
 */
package com.springinpractice.ch04.service;

import org.springframework.validation.Errors;

import com.springinpractice.ch04.domain.Account;

/**
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
public interface AccountService {

	/**
	 * <p>
	 * Registers the given account, but only if the account and password are
	 * valid. This method can perform checks against the database (e.g.,
	 * duplicate username or e-mail) to assess validity.
	 * </p>
	 * 
	 * @param account
	 *            account data
	 * @param password
	 *            user password
	 * @param errors
	 *            object for collecting and logging errors
	 * @return flag indicating whether the account was registered
	 */
	boolean registerAccount(Account account, String password, Errors errors);
}
