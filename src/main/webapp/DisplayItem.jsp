<%@page import="com.ty.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Item</title>
</head>
<body>



<%

	List<Item> items = (List<Item>)request.getAttribute("myItem");
%>

<table border="3">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Brand</th>
		<th>Quantity</th>
		<th>Delete</th>
		<th>Edit</th>
	</tr>
	
	<%
		for(Item item : items) {
			%>
			
			<tr>
				<td><%=item.getId() %></td>
				<td><%=item.getName() %></td>
				<td><%=item.getBrand() %></td>
				<td><%=item.getPrice() %></td>
				<td><%=item.getQty() %></td>
				<td>
					<a href="delete?id=<%=item.getId() %>">Delete</a>
				</td>
				<td>
					<a href="getitems?id=<%=item.getId() %>">Edit</a>
				</td>
			</tr>
			
	<%
		}
	%>
	
		
</table>


</body>
</html>