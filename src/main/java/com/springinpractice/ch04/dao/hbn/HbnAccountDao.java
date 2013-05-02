/* 
 * Copyright (c) 2013 Manning Publications Co.
 * 
 * Book: http://manning.com/wheeler/
 * Blog: http://springinpractice.com/
 * Code: https://github.com/springinpractice
 */
package com.springinpractice.ch04.dao.hbn;

import javax.inject.Inject;

import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springinpractice.ch04.dao.AccountDao;
import com.springinpractice.ch04.domain.Account;
import com.springinpractice.dao.hibernate.AbstractHbnDao;

/**
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
@Repository
public class HbnAccountDao extends AbstractHbnDao<Account> implements AccountDao {
	private static final Logger LOG = LoggerFactory.getLogger(HbnAccountDao.class);
	
	private static final String UPDATE_PASSWORD_SQL =
		"update account set password = ? where username = ?";
	
	@Inject private JdbcTemplate jdbcTemplate;
	
	public void create(Account account, String password) {
		LOG.debug("Creating Account");
		create(account);
		
		LOG.debug("Updating password");
		jdbcTemplate.update(UPDATE_PASSWORD_SQL, password, account.getUsername());
	}

	public Account findByUsername(String username) {
		Query q = getSession().getNamedQuery("findAccountByUsername");
		q.setParameter("username", username);
		return (Account) q.uniqueResult();
	}
}
