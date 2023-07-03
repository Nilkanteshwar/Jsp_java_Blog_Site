<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
html,
body,
.intro {
  height: 100%;
}

table td,
table th {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
}

thead th,
tbody th {
  color: #fff;
}

tbody td {
  font-weight: 500;
  color: rgba(255,255,255,.65);
}

.card {
  border-radius: .5rem;
}</style>
</head>

<body>
<%@include file="index.jsp"%>
<section class="intro">
  <div class="bg-image h-100" style="background-image: url('https://mdbootstrap.com/img/Photos/new-templates/tables/img2.jpg');">
    <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0,0,0,.25);">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="card bg-dark shadow-2-strong">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-dark table-borderless mb-0">
                    <thead>
                      <tr>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                        <th scope="col">Number</th>
                        <th scope="col">AGE</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">Tiger Nixon</th>
                        <td>System Architect</td>
                        <td>tnixon12@example.com</td>
                        <td>61</td>
                       
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>