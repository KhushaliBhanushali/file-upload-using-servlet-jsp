<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"/>

<div class="container my-3 col-md-6">
		<h1>Category Entry</h1>
		<a href="category">Return to Category List</a>
		<form method="post" action="new_category" enctype="multipart/form-data">

			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name"
					placeholder="Enter Category name">
			</div>
			<div class="form-group">
				<label for="description">Description</label> <input type="text"
					class="form-control" id="description" name="description"
					placeholder="Enter Category description">
			</div>
			<div class="form-group">
				<label for="image">Image</label> <input type="file"
					class="form-control" id="image" name="image">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
	
	<jsp:include page="footer.jsp"/>