<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<script>
</script>

<meta charset="UTF-8">
<title>Edit Phone Info</title>
</head>
<body>
<form:form name ="Edit" method="GET" action="/asdf/editPhoneSave">
	
	<table>
	<form:input type="hidden" path="id" />
	
	<tr>
	<td><form:label path="make">Maker</form:label></td>
	<td><form:input path="make"/><br/></td>
	</tr>
	
	<tr>
	<td><form:label path="model">Model</form:label></td>
	<td><form:input path="model"/><br/></td>
	</tr>
	
	
	<tr>
	<td><form:label path="version">Version</form:label></td>
	<td><form:input  path="version" /><br/></td>
	</tr>
	
	<tr>
	<td><form:label path="price">Price</form:label></td>
	<td><form:input  path="price"/><br/></td>
	</tr>
	
		</table>
	
	<input type="submit" value="Save the Edits"/>

	

</form:form>
</body>
</html>