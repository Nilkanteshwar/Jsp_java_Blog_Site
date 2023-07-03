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
  background-image: url('https://i.pinimg.com/originals/80/6d/6b/806d6b97c0f3194063250e416f00084f.jpg');
  background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="index.jsp"%>
<div class="center">
<div class="card" style="width: 18rem;">

  <div class="card-body">
 <h2 class="text-cemter">Register Students</h2>
    <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Phone Number</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
     <div class="form-group">
    <label for="exampleInputEmail1">Password</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 <div class="form-group">
 <a href="Login.jsp"> Already Have an account Login </a>
    </div>
  </div>
</div>
</div>


</body>
</html>