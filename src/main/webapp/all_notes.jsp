<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes :Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>


   <div class="container">
   <%@include file="navbar.jsp" %>
   <br>
   <h1 class="text-uppercase">All Notes :</h1>
   
   
   <div class="row">
   <div class="col-12">
   
   <!-- Fetch value from Database -->
   
    <%
   
   Session s =FactoryProvider.getfactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
   
    for(Note note:list)
    {
    	
    %>
    	
    <div class="card mt-3">
  <img class="card-img-top m-3 mx-auto" style="max-width:80px;"  src="image/note.png" alt="Card image cap">
  <div class="card-body px-4">
    <h3 class="card-title"><%=note.getTitle() %></h3>
    <p class="card-text"><%=note.getContent() %></p>
     
     
     <p><b class="text-primary"><%=note.getAddeddate()%></b></p>
     <div class="container text-center mt-3">
     <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
     
     </div>
  </div>
</div>	
    	
    	
    	
    <%	
    	
    }
   s.close();
   
   %>
   
   
   </div>
   
   
   </div>
   
   
   
  
   
   </div>

</body>
</html>