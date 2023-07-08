<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
.bb {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  color: red;
  font-size: 30px;
  resize: none;
}

.bb2 {
  width: 100%;
  height: 68vh!important;
  padding: 12px 20px;
  font-size: 16px;
  resize: none;
}

</style>
</head>
<body>
<div class="row">
<div class="col-8">
<div class="card">
  <div class="card-body">
    <section>
      <form action="BlogContentController" method="post">
        <div class="mb-3">
          <input type="text" id="imageUpload" name="image" onchange="previewImage(event)">
          <img id="imagePreview" src="#" alt="Image Preview" style="max-width: 300px; max-height: 300px; display: none;">
          <textarea class="form-control bb" placeholder="New Post title here" name="title"></textarea>
          <select class="form-select" aria-label="Default select example" name="tags">
            <option disabled selected>Select a Tag Here</option>
            <option value="1">Coding</option>
            <option value="2">Fun</option>
            <option value="3">Sports</option>
          </select>
          <textarea class="form-control bb2" placeholder="Write Your Post Content Here" name="content"></textarea>
          <button type="submit" value="submit" name="save" class="btn btn-primary">Publish</button>
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

<script>
  function previewImage(event) {
    var input = event.target;
    var preview = document.getElementById("imagePreview");

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        preview.src = e.target.result;
        preview.style.display = "block";
      };

      reader.readAsDataURL(input.files[0]);
    }
  }
</script>
</body>
</html>
