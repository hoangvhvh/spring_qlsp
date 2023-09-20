<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
img{
 width: 50%;
 height: 50%;
}
th{
  padding-right: 100px;
}
</style>
<body>
	<a href="add">Add Product</a>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Price</th>
				<th>Image</th>
				<th>Action</th>
				<th>Action</th>
				<th>Action</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td><img alt="" src="${product.image}"></td>
					<td><a href="view?productId=${product.id}">view</a></td>
					<td><a href="update?productId=${product.id}">edit</a></td>
					<td><a href="updatepath/${product.id}">edit2</a></td>
					<td><a href="delete?productId=${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>