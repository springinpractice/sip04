<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="newRegistrationUrl" value="/users/new.html" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registration confirmed</title>
	</head>
	<body>
		<h1>Registration confirmed</h1>
		<p>Thank you for registering.</p>
		<p><a href="${newRegistrationUrl}">Register another</a></p>
	</body>
</html>
