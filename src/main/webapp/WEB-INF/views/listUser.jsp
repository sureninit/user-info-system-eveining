<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list User</title>
</head>
<body>
	<h1>List User</h1>
	<div>
	<a href="user_form">Add User</a>
	</div>
	<c:if test="${!empty user}">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>UserName</th>
					<th>Password</th>
					<th>Email</th>
					<th>Mobile NO</th>
					<th>Hobbies</th>
					<th>Nationality</th>
					<th>Address</th>
					<th>Dob</th>
					<th>Gender</th>
					<th>Comments</th>
					<th>Actions</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${user}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.userName}</td>
						<td>${user.password}</td>
						<td>${user.email}</td>
						<td>${user.mobileNo}</td>
						<td>${user.hobbies}</td>
						<td>${user.nationality}</td>
						<td>${user.address.cityName},${user.address.countryName}</td>
						<td>${user.dob}</td>
						<td>${user.gender}</td>
						<td>${user.comments}</td>
						<td><a href="user_edit?id=${user.id}">Edit</a>|
						<a href="user_delete?id=${user.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</c:if>

</body>
</html>