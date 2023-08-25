<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp"/>

<body>
	<div class="container my-3 col-md-6">
		<h1>Category Edit</h1>
		<a href="category">Return to Category List</a>
		<form method="post" action="edit_category" enctype="multipart/form-data">
			<input type="hidden" class="form-control" id="id" name="id"
				value="<c:out value='${category.id}' />">
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name"
					value="<c:out value='${category.name}' />"
				placeholder="Enter category name">
			</div>
			<div class="form-group">
				<label for="description">Description</label> <input type="text"
					class="form-control" id="description" name="description"
					value="<c:out value='${category.description}' />"
				placeholder="Enter category description">
			</div>
			<div class="form-group">
				<label for="image">Image</label> <input type="file"
					class="form-control" id="image" name="image">
					<!-- value="<c:out value='${category.image}' />" 
					-->
					<input type="hidden"
					class="form-control" id="old_image" name="old_image"
					value="<c:out value='${category.image}' />">
					<img src="static/images/category/${category.image}" alt="Image" style="width:200px;height:200px">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
	
	<jsp:include page="footer.jsp"/>