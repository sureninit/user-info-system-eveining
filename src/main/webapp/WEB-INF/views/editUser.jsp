<%@page import="org.apache.tomcat.util.descriptor.tld.TaglibXml"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserInformation</title>
<%@ include file="header.jsp" %>
</head>
<body>
	<h1>User Information</h1>
	<div>
		<form action="user_update" method="post">
			<div>
			<label>Id</label>
			<input type="text" name="id" readonly="readonly" value="${user.id}">
			</div>
			
			<div>
				<label>Name</label> <input type="text" name="userName" value="${user.userName}">
			</div>
			<div>
				<label>Password</label> <input type="text" name="password" value="${user.password}" >
			</div>
			<div>
				<label>Email</label> <input type="text" name="email" value="${user.email}">
			</div>
			<div>
				<label>Gender</label> 
				<input type="radio" name="gender" value="Male"${user.gender=='Male'?'checked':''}>Male
				<input type="radio" name="gender" value="Female"${user.gender=='Female'?'checked':''}>Female
			</div>
			<div>
				<label>Hobbies</label> 
				<input type="checkbox" name="hobbies" value="Reading"
					 <c:if test="${fn:contains(user.hobbies, 'Reading')}">checked</c:if>>Reading
				<input type="checkbox" name="hobbies" value="Playing"
					 <c:if test="${fn:contains(user.hobbies, 'Playing')}">checked</c:if>>Playing
			</div>

			<div>
				<label>Nationality</label> 
				<select name="nationality">
					<option value="Nepalease"${user.nationality=='Nepalease'?'selected':'' }>Nepalese</option>
					<option value="American"${user.nationality=='American'?'selected':''}>American</option>
					<option value="Chinese"${user.nationality=='Chinese'?'selected':''}>Chinese</option>
				</select>
			</div>
			<div>
				<label>Mobile No</label> <input type="number" name="mobileNo" value="${user.mobileNo}">
			</div>

			<div>
				<label style="font-weight: bold;">Address:</label>
				 <label>City Name</label>
				  <input type="text" name="address.cityName" value="${user.address.cityName}"> 
				 <label>Country Name</label>
				  <input type="text" name="address.countryName" value="${user.address.countryName}">
			</div>
			<div>
				<label>Comments</label>
				<textarea rows="5" cols="10" name="comments">${user.comments}</textarea>
			</div>
			<div>
				<label>DOB</label> <input type="date" name="dob" value="${user.dob}">
			</div>

			<div>
				<label>Submit</label> <input type="submit" value="submit">
			</div>
		</form>
	</div> 
</body>
</html>