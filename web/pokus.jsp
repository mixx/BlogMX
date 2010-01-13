<%@ page language="java" import="java.util.*,cz.mixx.blog.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pokus</title>
</head>
<body>
	<ul>
	<% for (String item : (List<String>) request.getAttribute("options")) { %>
	    <li><%= item %></li>
	<% } %>
</ul>

<p>${options[0]}</p>

<p>
    <jsp:useBean id="dog" class="cz.mixx.blog.model.Dog" scope="request"/>
    Dog's name: <jsp:getProperty property="name" name="dog"/><br/>
    
    Second dog's name: ${dog.name}
</p>
</body>
</html>