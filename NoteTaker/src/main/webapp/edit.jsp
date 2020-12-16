<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	
	<div class="container"> <!-- Large screen use  " -fluid p-0 m-0 "-->
    	
    	  <%@include file = "navbar.jsp" %>
    	  <br>
    		<h1>Edit Your Note</h1>
    		<br>
    		<%
    			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    			Session s = FactoryProvider.getFactory().openSession();
    			Note note = s.get(Note.class,noteId);
    	 	%>
    	 	
    	 	<form action="UpdateServlet" method="post">
    	 	
    	 	<input type = "hidden" name = "noteId" value = "<%= note.getId() %>"/>
    	 	
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" name="title" id="title" aria-describedby="emailHelp"
					placeholder="Enter Here" 
					value = "<%= note.getTitle() %>"
					required />
				<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<!-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> -->
				<textarea required name="content" id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px"><%= note.getContent() %></textarea>
			</div>
			<!-- <div class="form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div> -->
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
		</form>
    		
    		
    </div>
	
</body>
</html>