<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />

<div class="container-fluid">

	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h1>Category List</h1>
			<a href="new_category"><button
					class="btn btn-sm btn-primary my-3">Add New Category</button></a>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>

						<tr>
							<th>ID</th>
							<th>NAME</th>
							<th>DESCRIPTION</th>
							<th>IMAGE</th>
							<th>ACTIONS</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="category" items="${listCategory}">
							<tr>
								<td><c:out value="${category.id}" /></td>
								<td><c:out value="${category.name}" /></td>
								<td><c:out value="${category.description}" /></td>
								<td><img src="static/images/category/${category.image}"
									alt="Image" style="width: 200px; height: 200px"></td>
								<td><a
									href="edit_category?id=<c:out value='${category.id}' />"><button
											class="btn btn-sm btn-success">Update</button></a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
									onclick="return confirm('Do you want to delete this message?')"
									href="remove_category?id=<c:out value='${category.id}' />"><button
											class="btn btn-sm btn-danger">Delete</button></a></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<jsp:include page="footer.jsp" />