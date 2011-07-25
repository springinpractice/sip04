<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url var="submitRegistrationUrl" value="/users.html" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>New user registration</title>
	</head>
	<body>
		<h1>New user registration</h1>
		
		<form:form cssClass="main" action="${submitRegistrationUrl}" modelAttribute="account">
			<p>All fields are required.</p>
			
			<div class="panel grid">
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">Username:</div>
					<div class="yui-u">
						<div><form:input path="username" cssClass="short" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">Password:</div>
					<div class="yui-u">
						<div><form:password path="password" showPassword="false" cssClass="short" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">Confirm password:</div>
					<div class="yui-u">
						<div><form:password path="confirmPassword" showPassword="false" cssClass="short" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">First name:</div>
					<div class="yui-u">
						<div><form:input path="firstName" cssClass="short" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">Last name:</div>
					<div class="yui-u">
						<div><form:input path="lastName" cssClass="short" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="fieldLabel yui-u first">E-mail address:</div>
					<div class="yui-u">
						<div><form:input path="email" cssClass="medium" /></div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="yui-u first"></div>
					<div class="yui-u">
						<form:checkbox id="marketingOk" path="marketingOk" />
						<label for="marketingOk">Please send me product updates by e-mail. I can unsubscribe at any time.</label>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="yui-u first"></div>
					<div class="yui-u">
						<div>
							<form:checkbox id="acceptTerms" path="acceptTerms" />
							<label for="acceptTerms">I accept the <a href="#">terms of use</a>.</label>
						</div>
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="yui-u first"></div>
					<div class="yui-u">
						Please see our <a href="#">privacy policy</a>.
					</div>
				</div>
				<div class="gridRow yui-gf">
					<div class="yui-u first"></div>
					<div class="yui-u"><input type="submit" value="Register"></input></div>
				</div>
			</div>
		</form:form>
	</body>
</html>
