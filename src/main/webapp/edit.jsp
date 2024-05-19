<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>

<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
   
   <br>
   <%
   
   int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	
	Session s=FactoryProvider.getfactory().openSession();
	Note note = (Note)s.get(Note.class, noteId);
	
   
   
   %>
   
   
   
   <form action="UpdateServlet"  method="post">
   
   <input type="hidden" value="<%=note.getId()%>" name="noteId" />
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required="text" class="form-control" id="title" aria-describedby="emailHelp" 
    placeholder="Enter here" name="title" value="<%=note.getTitle()%>">
   
  </div>
  
  
  <div class="form-group">
    <label for="content">Note Content</label>
  <textarea required id="content"  name="content" placeholder="Enter Your content here" class="form-control" 
  style="height:300px;"><%=note.getContent()%>
  </textarea>
  
  </div>
  
  <div class="container text-center">
    
  <button type="submit" class="btn btn-primary">Update</button>
  </div>

</form>
   
   
   
   
   </div>

</body>
</html>