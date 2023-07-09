<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
img{
  width: 62%;
}

.dropdown-menu {
  z-index: 9999;
  position: relative;
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
        <button type="button" class="btn btn-outline-primary"><a href="BlogContent.jsp">Create Post</a></button>
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
            <i class="fa fa-user" aria-hidden="true"></i>
          </button>
          <div class="dropdown-menu dropdown-menu-right"> <!-- Add the dropdown-menu-right class -->
            <a class="dropdown-item" href="#">heboi!!</a>
            <a class="dropdown-item" href="#">Dashboard</a>
            <a class="dropdown-item" href="#">Logout</a>
          </div>
        </div>
      </form>
    </div>
  </nav>
  <section>
    <div class="container">
      <div class="row">
        <div class="col-6 col-md-8">
          <div class="card mb-3">
            <div class="row no-gutters">
              <% ResultSet result=(ResultSet)request.getAttribute("result");
              while(result.next()) {%>
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
              <% } %>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <form action="" method="post">
            <div class="card" style="width: 18rem;">
              <ul class="list-group list-group-flush">
                <li class="list-group-item"></li>
              </ul>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
