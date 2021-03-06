<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
/* background-image: url("https://res.cloudinary.com/rebelwalls/image/upload/b_black,c_fill,fl_progressive,h_533,q_auto,w_800/v1503927985/article/R15261_image1"); */

}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #008CBA;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 15px 15px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.button2 {
  background-color: slateblue;
  color: black; border: none;	
  padding: 4px 15px;
  border-radius: 4px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;

}

.button2:hover {
  background-color: grey;
  color: white;
}
.button3 {
  background-color: #ED4646;
  color: black; border: none;	
  padding: 4px 15px;
  border-radius: 4px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
 opacity: 1;
  transition: 0.3s;
}

.button4 {
  background-color: #4CAF50;
  color: black; border: none;
  padding: 4px 10px;
  border-radius: 4px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  opacity: 1;
  transition: 0.3s;
}
.button3:hover{opacity: 0.6}
.button4:hover{opacity: 0.7}

</style>

<title>
Phones Available
</title>

</head>
<body> 

	<c:if test="${active==0 }">
	 	<a href="viewActivatedPhones"><button  class="button"><span>View Active Phones</span></button></a><br/>
	</c:if>
	<c:if test="${active==1 }">
 	<a href="viewAllPhones"><button class="button"><span>View All Phones</span></button></a><br/><br/>
	</c:if>

 	
		<table bgcolor= #D8D8D8 border=1 rules=all>

	<thead>
	<tr align ="center" style="font-weight:bold">
	<td>S No</td><td>Maker</td><td>Model</td><td>Version</td><td align="center">Price</td>
	<td>Creation Time</td>
	<td>Modified Time</td>
	<td>EDIT<td>DELETE</td>
	</tr>
	</thead>
	<c:forEach var="phonerow" items="${list}"> 
	<tr>
	<td>${phonerow.id}</td>
	<td>${phonerow.make}</td>
	<td>${phonerow.model}</td>
	<td align="center">${phonerow.version}</td> 
	<td width="55" align ="right">${phonerow.price}</td>
	<td>${phonerow.creationDate}</td>
	<td>${phonerow.modifiedDate}</td>
	
		
	<td><a href="editPhone/${phonerow.id}"><button class="button2" >Edit</button></a></td>	
		
	<c:if test="${phonerow.activation ==1}">
	<td><a href="deletePhone/${phonerow.id}/${active}"><button class="button3">Delete</button></a></td>
	</c:if>
	<c:if test="${phonerow.activation ==0}">
	<td><a href="reactivatePhone/${phonerow.id}"><button class="button4">Reactivate</button></a></td>
	</c:if>
	

	</tr>	
	</c:forEach>
	</table>
	
</body>
</html>