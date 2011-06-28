<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="/WEB-INF/jsp/init.jsp" %>

<c:url var="submitRegistrationUrl" value="/users.html" />

<spring:message var="pageTitle" code="newUserRegistration.pageTitle" />
<spring:message var="msgAllFieldsRequired" code="newUserRegistration.message.allFieldsRequired" />
<spring:message var="register" code="newUserRegistration.label.register" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><c:out value="${pageTitle}" /></title>
	</head>
	<body>
		<form:form cssClass="main" action="${submitRegistrationUrl}" modelAttribute="account">
			<h1><c:out value="${pageTitle}" /></h1>
			
			<p><spring:message code="newUserRegistration.message.allFieldsRequired" /></p>
			
			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.username" /></div>
				<div class="yui-u"><form:input path="username" cssClass="short" /></div>
			</div>
			
			<%-- There is a <form:password> tag, but we use straight HTML to suppress form binding --%>
			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.password" /></div>
				<div class="yui-u"><input type="password" name="password" class="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.confirmPassword" /></div>
				<div class="yui-u"><input type="password" name="confirmPassword" class="short" /></div>
			</div>

			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.firstName" /></div>
				<div class="yui-u"><form:input path="firstName" cssClass="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.lastName" /></div>
				<div class="yui-u"><form:input path="lastName" cssClass="short" /></div>
			</div>
			<div class="formItem yui-gf">
				<div class="yui-u first"><spring:message code="newUserRegistration.label.email" /></div>
				<div class="yui-u"><form:input path="email" cssClass="medium" /></div>
			</div>
			<div class="formItem">
				<form:checkbox id="marketingOk" path="marketingOk" />
				<label for="marketingOk"><spring:message code="newUserRegistration.label.marketingOk" /></label>
			</div>
			<div class="formItem">
				<form:checkbox id="acceptTerms" path="acceptTerms" />
				<label for="acceptTerms"><spring:message code="newUserRegistration.label.acceptTerms" /></label>
			</div>
			<div class="formItem">
				<spring:message code="newUserRegistration.label.privacyPolicy" />
			</div>
			<div class="formItem submit"><input type="submit" value="${register}"></input></div>
		</form:form>
	</body>
</html>
