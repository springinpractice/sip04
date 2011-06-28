<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:url var="sipCssUrl" value="/skin/styles/sip.css" />
<c:url var="sipJsUrl" value="/skin/scripts/sip.js" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><decorator:title /> - Spring in Practice</title>
		<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/reset-fonts-grids/reset-fonts-grids.css" />
		<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/yui/2.9.0/build/base/base.css" />
		<link rel="stylesheet" type="text/css" href="${sipCssUrl}" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
		<script type="text/javascript" src="${sipJsUrl}"></script>
		<decorator:head />
	</head>
	<body>
		<div id="doc3">
			<div id="hd">
				<div class="regionInner">
					<div id="hdTitle"></div>
					<div id="hdAppName">Web Products, Inc.</div>
				</div>
			</div>
			<div id="bd">
				<div class="regionInner">
					<decorator:body />
				</div>
			</div>
			<div id="ft">
				<div class="regionInner">
					<div id="ftLinks">
						<a href="http://www.manning.com/wheeler/">Manning Author Web Site</a> |
						<a href="http://springinpractice.com/">Spring in Practice Blog</a> |
						<a href="http://wheelersoftware.com/">Wheeler Software</a>
					</div>
					<div id="legal">
						Copyright &copy; 2008-2011 Manning Publications Co.
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
