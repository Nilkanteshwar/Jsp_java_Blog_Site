<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<style>
section{
padding-top: 26px;
    width: 92%;
    height: 84vh;
    background: white;}
    
    .bg{
  background: #f1f1f1;
    }
</style>
<body class="bg">

<%@include file="BlogsNav.jsp" %>
<div class="row no-gutters">
  <div class="col-sm-6 col-md-4"><div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
  </ul>
</div></div>
  <div class="col-6 col-md-8">
  <section>
  Total Posts
  
  <div class="card" style="width:20rem">
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
  
  </section>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>