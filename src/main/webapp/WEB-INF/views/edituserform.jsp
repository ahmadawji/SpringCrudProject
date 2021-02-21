<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<body>

<ul class="nav nav-tabs">
  <li role="presentation" ><a class="navbar-brand" href="/">Home</a></li>
  <li role="presentation" ><a href="/viewuser">View Users</a></li>
  <li role="presentation" ><a href="/adduser">Add User</a></li>
</ul>

<div class="container center">
<div class="jumbotron">

<form:form  method="POST" action="/updateuser" class="form-horizontal"  ModelAttribute="u">

  <div class="form-group">
    <form:label  path="Username" class="col-sm-2 control-label">Username: </form:label>
    <div class="col-sm-10">
      <form:input path="Username" type="text" class="form-control" placeholder="Username" required="required"/>
      <input type="text" name="oldusername" value="${oldusername}" hidden />
    </div>
  </div>
 
 


<div class="form-group">
 <div class="col-sm-12">
<div class="input-group">
  <div class="input-group-addon">
    <span class="input-group-text">First and last name</span>
  </div>
  <form:input path="fname" type="text" aria-label="First name" class="form-control " placeholder="Firstname"  required="required"/>
  <form:input path="lname" type="text" aria-label="Last name" class="form-control" placeholder="Lastname" required="required"/>
</div>
</div>
</div>



  <div class="form-group">
    <form:label path="password" class="col-sm-2 control-label">Password: </form:label>
    <div class="col-sm-10">
      <form:input type="text" class="form-control"  path="password" placeholder="Password" required="required"/>
    </div>
  </div>
  
    <div class="form-group">
    <form:label path="city" class="col-sm-2 control-label">City: </form:label>
    <div class="col-sm-10">
      <form:input type="text" class="form-control"  path="city" placeholder="City" required="required"/>
    </div>
  </div>
  
      <div class="form-group">
    <form:label path="bdate" class="col-sm-2 control-label">Birthdate: </form:label>
    <div class="col-sm-10">
      <form:input path="bdate" type="date" class="form-control" required="required" />
    </div>
  </div>
  
   <div class="form-group">
  <div class="col-sm-12">
  <div class="input-group">
  <div class="input-group-addon">
    <label class="input-group-text" for="inputGroupSelect01">Sex</label>
  </div>
  <form:select path="sex" class="form-control" id="inputGroupSelect01">
    <option selected>Choose...</option>
    <form:option value="M">Male</form:option>
    <form:option value="F">Female</form:option>
  </form:select>
</div>
</div>
</div>
  

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Update</button>
    </div>
  </div>
</form:form>

</body>
</html>