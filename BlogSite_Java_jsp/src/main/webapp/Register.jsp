<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
<script>
    function showSuccessMessage() {
        alert("Registered successfully!");
    }
</script>
</head>
<body>
<%@include file="RegLoginNav.jsp"%>
<div class="center">
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h2 class="text-cemter">Register</h2>
    <form action="Registration" method="post" onsubmit="showSuccessMessage()">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Phone Number</label>
            <input type="text" name="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Password</label>
            <input type="text"name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
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
