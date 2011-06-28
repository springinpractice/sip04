/* 
 * $Id$
 * 
 * Copyright (c) 2010 Manning Publications Co.
 * 
 * Book web site   - http://www.manning.com/wheeler/
 * Book blog       - http://springinpractice.com/
 * Author web site - http://wheelersoftware.com/
 */
package com.springinpractice.ch04.dao;

import com.springinpractice.ch04.domain.Role;
import com.springinpractice.dao.Dao;

/**
 * @version $Id$
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
public interface RoleDao extends Dao<Role> {
	
	Role findByName(String name);
}
