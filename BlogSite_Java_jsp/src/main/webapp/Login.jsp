<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center {

  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);

}
body {
  background-image: url('https://wallpapercave.com/wp/wp3530389.jpg');
  background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="RegLoginNav.jsp"%>
<div class="center">
<div class="card" style="width: 18rem;">

  <div class="card-body">
 <h2 class="text-center">LOGIN</h2>
    <form action="Login"  method="post">
  
 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  

     <div class="form-group">
    <label for="exampleInputEmail1">Password</label>
    <input type="text" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <button type="submit" class="btn btn-primary">Login</button>
  <p>New User?<a href="Register.jsp">Register</a></p>
</form>
  </div>
</div>
</div>


</body>
</html>