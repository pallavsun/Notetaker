<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

 
   <div class="container">
   <%@include file="navbar.jsp" %>
   
   <br>
   <h1>Please Fill your note Detail</h1>
   <br>
   
   <!-- This is add Form -->
   
   
   <form action="SaveNoteServlet"  method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" name="title">
   
  </div>
  
  
  <div class="form-group">
    <label for="content">Note Content</label>
  <textarea required id="content"  name="content" placeholder="Enter Your content here" class="form-control" style="height: 300px"></textarea>
  
  </div>
  
  <div class="container text-center">
    
  <button type="submit" class="btn btn-primary">Add</button>
  </div>

</form>
   
   
   
   
   </div>


</body>
</html>