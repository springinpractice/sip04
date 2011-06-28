package com.springinpractice.ch04.web;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
public class AccountForm {
	private String username, password, confirmPassword, firstName, lastName, email;
	private boolean marketingOk = true, acceptTerms = false;

	public String getUsername() { return username; }

	public String getPassword() { return password; }

	public void setPassword(String password) { this.password = password; }

	public String getConfirmPassword() { return confirmPassword; }

	public void setConfirmPassword(String confirmPassword) { this.confirmPassword = confirmPassword; }

	public String getFirstName() { return firstName; }

	public void setFirstName(String firstName) { this.firstName = firstName; }

	public String getLastName() { return lastName; }

	public void setLastName(String lastName) { this.lastName = lastName; }
	
	public void setUsername(String userName) { this.username = userName; }

	public String getEmail() { return email; }

	public void setEmail(String email) { this.email = email; }
	
	public boolean isMarketingOk() { return marketingOk; }
	
	public void setMarketingOk(boolean marketingOk) { this.marketingOk = marketingOk; }
	
	public boolean getAcceptTerms() { return acceptTerms; }
	
	public void setAcceptTerms(boolean acceptTerms) { this.acceptTerms = acceptTerms; }

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE)
			.append("firstName", firstName)
			.append("lastName", lastName)
			.append("userName", username)
			.append("email", email)
			.append("marketingOk", marketingOk)
			.append("acceptTerms", acceptTerms)
			.toString();			
	}		
}
