/* 
 * $Id$
 * 
 * Copyright (c) 2010 Manning Publications Co.
 * 
 * Book web site   - http://www.manning.com/wheeler/
 * Book blog       - http://springinpractice.com/
 * Author web site - http://wheelersoftware.com/
 */
package com.springinpractice.ch04.service;

import org.springframework.validation.Errors;

import com.springinpractice.ch04.domain.Account;

/**
 * @version $Id$
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
	
	// For recipe 6.6

	/**
	 * <p>
	 * Returns the requested account with roles hydrated, or <code>null</code>
	 * if no such account exists.
	 * </p>
	 * 
	 * @return the requested account, or <code>null</code> if it doesn't exist
	 */
	Account getAccountByUsername(String username);
}
