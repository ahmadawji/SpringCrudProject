<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

</head>
<body>

<div class="jumbotron">
  <h1>CRUD by Ahmed Awji</h1>
</div>

<div class="container">
<div class="row">
  <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="thumbnail">
      <img style="width: 50%; height:30%;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsQPjZBqQY9rrl92Pzz2pAVYUaLMRJXcaIZQ&usqp=CAU" alt="...">
      <div class="caption">
        <p ><a href="adduser" style="width:100%" class="btn btn-primary " role="button">Create User</a> </p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="thumbnail">
      <img style="width: 50%; height:30%;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZYqzmTAxLFMkdDJNbgsoErfY4fGLpIsY-og&usqp=CAU" alt="...">
      <div class="caption">
        <p ><a href="viewuser" style="width:100%" class="btn btn-primary " role="button">View Users</a> </p>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>
