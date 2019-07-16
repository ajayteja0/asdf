<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function intcheck1() {
	  var x = document.getElementById("version").value;
	  if(isNaN(x))
	  document.getElementById("demo1").innerHTML = " Enter a valid number";
	  else	
		  document.getElementById("demo1").innerHTML =" ";	

}
function intcheck2() {
	  var x = document.getElementById("price").value;
	  if(isNaN(x))
	  document.getElementById("demo2").innerHTML = " Enter a valid number";
	  else	
		  document.getElementById("demo2").innerHTML =" ";	
	}
</script>
<title>ADD PHONES</title>
</head>
<body>

<h1>Add a new Phone</h1>

<form:form method="post" action="savePhone">  
	<table>
	<tr><td>Maker</td><td><form:input path="make"/></td></tr>
	<tr><td>Model</td><td><form:input path="model"/></td></tr>
	<tr><td>Version</td><td><form:input id="version" path="version" onkeyup="intcheck1()"/></td>
	<td><span id="demo1"></span></td></tr>
	<tr><td>Price</td><td><form:input id="price" path="price" onkeyup="intcheck2()"/></td>
	<td><font color="red"><span id="demo2"></span></font></td></tr>
	</table>
	<input type="submit" value="Add Phone"/>


</form:form>

</body>
</html>