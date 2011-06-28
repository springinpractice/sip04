<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="/WEB-INF/jsp/init.jsp" %>

<c:url var="submitRegistrationUrl" value="/users.html" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>New user registration</title>
	</head>
	<body>
		<form:form cssClass="main" action="${submitRegistrationUrl}" modelAttribute="account">
			<h1>New user registration</h1>
			
			<p>All fields are required.</p>
			
			<div class="formItem yui-gf">
				<div class="yui-u first">Username:</div>
				<div class="yui-u"><form:input path="username" cssClass="short" /></div>
			</div>
			
			<%-- There is a <form:password> tag, but we use straight HTML to suppress form binding --%>
			<div class="formItem yui-gf">
				<div class="yui-u first">Password:</div>
				<div class="yui-u"><input type="password" name="password" class="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first">Confirm password:</div>
				<div class="yui-u"><input type="password" name="confirmPassword" class="short" /></div>
			</div>

			<div class="formItem yui-gf">
				<div class="yui-u first">First name:</div>
				<div class="yui-u"><form:input path="firstName" cssClass="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first">Last name:</div>
				<div class="yui-u"><form:input path="lastName" cssClass="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first">E-mail address:</div>
				<div class="yui-u"><form:input path="email" cssClass="medium" /></div>
			</div>
			<div class="formItem">
				<form:checkbox id="marketingOk" path="marketingOk" />
				<label for="marketingOk">Please send me product updates by e-mail. I can unsubscribe at any time.</label>
			</div>
			<div class="formItem">
				<form:checkbox id="acceptTerms" path="acceptTerms" />
				<label for="acceptTerms">I accept the <a href="#">terms of use</a>.</label>
			</div>
			<div class="formItem">
				Please see our <a href="#">privacy policy</a>.
			</div>
			<div class="formItem submit"><input type="submit" value="Register"></input></div>
		</form:form>
	</body>
</html>
