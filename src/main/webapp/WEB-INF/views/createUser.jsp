<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserInformation</title>
</head>
<body>
	<h1>User Information</h1>
	<div>
		<form action="user_save" method="post">
		<span>
		<form:errors path="user.*" cssStyle="color:red" />
		</span>
			<div>
				<label>Name</label> <input type="text" name="userName">
			</div>
			<div>
				<label>Password</label> <input type="text" name="password">
			</div>
			<div>
				<label>Email</label> <input type="text" name="email">
			</div>
			<div>
				<label>Gender</label> <input type="radio" name="gender" value="Male">Male
				<input type="radio" name="gender" value=Female>Female
			</div>
			<div>
				<label>Hobbies</label> <input type="checkbox" name="hobbies"
					value="Reading">Reading <input type="checkbox"
					name="hobbies" value="Playing">Playing
			</div>

			<div>
				<label>Nationality</label> 
				<select name="nationality">
					<option value="Nepalease">Nepalese</option>
					<option value="American">American</option>
					<option value="Chinese">Chinese</option>
				</select>
			</div>
			<div>
				<label>Mobile No</label> <input type="number" name="mobileNo">
			</div>

			<div>
				<label style="font-weight: bold;">Address:</label>
				 <label>City Name</label>
				  <input type="text" name="address.cityName"> 
				 <label>Country Name</label>
				  <input type="text" name="address.countryName">
			</div>
			<div>
				<label>Comments</label>
				<textarea rows="5" cols="10" name="comments"></textarea>
			</div>
			<div>
				<label>DOB</label> <input type="date" name="dob">
			</div>

			<div>
				<label>Submit</label> <input type="submit" value="submit">
			</div>
		</form>
	</div> 
</body>
</html>