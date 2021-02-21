<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<ul class="nav nav-tabs">
 <li role="presentation" ><a class="navbar-brand" href="/">Home</a></li>
  <li role="presentation" class="active"><a href="#">View Users</a></li>
  <li role="presentation"><a href="adduser">Add User</a></li>
</ul>

<div class="container" >
<div class="jumbotron" style="">

<table border="1" width="100%" cellpadding="3" style="margin:0 auto;" class="table table-bordered table-striped">
<th>Username</th>
<th>First name</th>
<th>Last name</th>
<th>City</th>
<th>Date</th>
<th>Sex</th>
<th>Edit</th>
<th>Delete</th>
<tbody>
<c:forEach var="user" items="${list}">
<tr>
<td>${user.getUsername()}</td>
<td>${user.getFname()}</td>
<td>${user.getLname()}</td>
<td>${user.getCity()}</td>
<td>${user.getBdate()}</td>
<td>${user.getSex()}</td>
<td><a href="edituser/${user.getUsername()}" class="btn btn-primary">Edit</a></td>
<td><a href="deleteuser/${user.getUsername()}" class="btn btn-danger">Delete</a></td>

</tr>
</c:forEach>
</tbody>
</table>

</div>
</div>

</body>
</html>