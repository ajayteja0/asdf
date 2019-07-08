<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Phones Available</title>
</head>
<body>
	<table bgcolor=#d2bccc
 border=1 rules=all>
	<thead>
	<tr>
	<td>S No</td><td>Maker</td><td>Model</td><td>Version</td><td>Price</td><td>DELETE</td>
	</tr>
	</thead>
	<c:forEach var="phone" items="${list}"> 
	<tr>
	<td>${phone.id}</td>
	<td>${phone.make}</td>
	<td>${phone.model}</td>
	<td>${phone.version}</td>
	<td>${phone.price}</td>
<!--  <td><a href="editPhone/${phone.id}"><button>Edit</button></a></td> -->	
    <td><a href="deletePhone/${phone.id}"><button>Delete</button></a></td>
	</tr>	
	</c:forEach>
	</table>
	
</body>
</html>