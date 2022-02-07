<%@page import="com.ty.dto.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="NavBar.jsp" %>
<%Item item=(Item)request.getAttribute("myItem");  %>
<h1>Edit Student</h1>
	<form action="edit" method="post">
		
		ID : <input type="number" name="id" value="<%=item.getId() %>" readonly="readonly"> </br></br>
		Name : <input type="text" name="itemName" value="<%=item.getName()%>"> </br></br>
		Brand : <input type="text" name="brand" value="<%=item.getBrand() %>"> </br></br>
		Quantity : <input type="number" name="qty" value="<%=item.getQty() %>"> </br></br>
		Price : <input type="number" name="price" value="<%=item.getPrice() %>"> </br></br>
		
		<input type="submit" value="Update Item">
	
	</form>
</body>
</html>