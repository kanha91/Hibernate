<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<!-- Large screen use  " -fluid p-0 m-0 "-->

		<%@include file="navbar.jsp"%>
		<br>
		<h1>This is Add Notes Page</h1>
		<br>
		<!-- Please Fill Your Node Details -->

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" name="title" id="title" aria-describedby="emailHelp"
					placeholder="Enter Here" required />
				<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<!-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> -->
				<textarea required name="content" id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px"></textarea>
			</div>
			<!-- <div class="form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div> -->
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>