<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
.bb{
  width: 100%;
  height: 150px;
  padding: 12px 20px;
	::placeholder:color:red;
	font-size:30px;
  font-size: 16px;
  resize: none;}
  .bb2{
    width: 100%;
  height: 68vh!important;
  padding: 12px 20px;

 
  font-size: 16px;
  resize: none;}


</style>
</head>
<body>
<div class="row">
<div class="col-8">
<div class="card" >

  <div class="card-body">
 	<section>
 	<form class="">
  <div class="mb-3">
    <label for="">Image</label>
    <textarea class="form-control bb " id="" placeholder="New Post title here"  ></textarea>
    <select class="form-select" aria-label="Default select example">
  <option Disabled >Select a Tag Here</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
   <textarea class="form-control bb2 " id="" placeholder="Write Your Post Content Here"  ></textarea>
   <button type="button" class="btn btn-primary">Publish</button>
</select>
   
  </div>
  </form>
 	
 	</section> 
 
  </div>
  </div>
</div>
<div class="col-4">
<h3>Writing a Great Post Title</h3>
</div>


</div>
</body>
</html>