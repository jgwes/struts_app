<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>https://github.com/jgwes/struts_app</title>
</head>
<body>
<h1>Guten Morgen!</h1>
<p>

<!-- First example, url tag embedded in href tag-->
<a href="<s:url action='talktome'/>">Bringen sie mir der speisekarte, bitte!</a></p>


<!-- url action tag with parameter -->
<s:url action="talktome" var="talktomelink">
	<s:param name="userName">Ruth Olivia Westerman</s:param>
</s:url>

<!-- href tag references url action tag via var name -->
<p><a href="${talktomelink}">Hello Ruth Olivia!!!</a></p>

<!-- form starts here, submits to same action -->
<p>For personal hello, fill out his form.</p>
<s:form action="talktome">
	<s:textfield name="userName" label="Your name" />
	<s:submit value="Submit" />
</s:form>


</body>
</html>
