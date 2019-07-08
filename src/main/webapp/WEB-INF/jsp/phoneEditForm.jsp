<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Phone Info</title>
</head>
<body>
<form:form method="POST" action="/asdf/editPhoneSave">
	Maker<form:input path="make"/><br/>
	Model<form:input path="model"/><br/>
	Version<form:input path="version"/><br/>
	Price<form:input path="price"/><br/>
	<input type="submit" value="Save the Edits"/>
</form:form>
</body>
</html>