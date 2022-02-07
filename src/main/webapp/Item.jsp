<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item</title>
</head>
<body>
<form action="create" method="post" >

		Name : <input type="text" name="itemName"> <br></br>
		Brand : <input type="text" name="brand"> <br></br>
		price : <input type="text" name="price"><br></br>
		Quantity : <input type="number" name = "qty"><br></br>
		
		<input type="submit" value="Create Item">

	</form>
</body>
</html>