<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
img{
width:62%
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

<div class="bg">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
   
   </ul>
     
        <form class="d-flex">

        <button type="button" class="btn btn-light">Logout</button>
      </form>
  </div>
</nav>
<section>
<div class="row">
<div class="col-8">
<div class="card mb-3">
  <div class="row no-gutters">
   
    <form action="" method="">
   <%!  %>
    </form>
    <%
    
        ResultSet result=(ResultSet)request.getAttribute("result");
        while(result.next()){%>
			 <div class="col-md-4">
     <img src="<%= result.getString(4) %>" alt="...">
    </div>
    	 <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><%=result.getString(1) %></h5>
        <p class="card-text"><%=result.getString(2) %></p>
        <p class="card-text"><small class="text-muted"><%=result.getString(3) %></small></p>
      </div>
    </div>
    	
  <% }%>  
    
    
    
 
    
    
    
    
  </div>
</div>
</div>

<div class="col-4">
<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
  </ul>
</div>

</div>


</div>


</section>
</div>

</body>
</html>