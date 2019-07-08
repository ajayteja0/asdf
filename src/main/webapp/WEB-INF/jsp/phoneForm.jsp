<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD PHONES</title>
</head>
<body>
<h1>Add a new Phone</h1>

<form:form method="post" action="savePhone">  
	Maker<form:input path="make"/><br/>
	Model<form:input path="model"/><br/>
	Version<form:input path="version"/><br/>
	Price<form:input path="price"/><br/>
	<input type="submit" value="Add Phone"/>


</form:form>
</body>
</html>