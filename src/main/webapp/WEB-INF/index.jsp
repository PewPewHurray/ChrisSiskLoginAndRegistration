<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<div class="m-5">
		<h1>Welcome!</h1>
		<h5>Join our growing community</h5>
		<form:form action="/register" method="post" modelAttribute="newUser" class="pt-2 form">
			<table class="table table-bordered border-dark">
				<thead>
					<tr>
						<th colspan="2" class="fs-6 alignCenter">Register</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><form:label for="userName" path="userName" class="fw-bold">User Name:</form:label></td>
						<td class="alignCenter"><form:input type="text" name="userName" path="userName" /></td>
					</tr>
					<tr><td colspan="2"><form:errors path="userName" class="text-danger"></form:errors></td></tr>
					<tr>
						<td><form:label for="email" path="email" class="fw-bold">Email:</form:label></td>
						<td class="alignCenter"><form:input type="text" name="email" path="email" /></td>
					</tr>
					<tr><td colspan="2"><form:errors path="email" class="text-danger"></form:errors></td></tr>
					<tr>
						<td><form:label for="password" path="password" class="fw-bold">Password:</form:label></td>
						<td class="alignCenter"><form:input type="password" name="password" path="password" /></td>
					</tr>
					<tr><td colspan="2"><form:errors path="password" class="text-danger"></form:errors></td></tr>
					<tr>
						<td><form:label for="confirm" path="confirm" class="fw-bold">Confirm Password:</form:label></td>
						<td class="alignCenter"><form:input type="password" name="confirm" path="confirm"/></td>
					</tr>
					<tr><td colspan="2"><form:errors path="confirm" class="text-danger"></form:errors></td></tr>
					<tr>
						<td colspan="2"><span class="d-block"><input type="submit" class="btn btn-primary fullWidth"/></span></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<form:form action="/login" method="post" modelAttribute="newLogin" class="pt-2 form">
			<table class="table table-bordered border-dark">
				<thead>
					<tr>
						<th colspan="2" class="fs-6 alignCenter">Login</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><form:label for="email" path="email" class="fw-bold">Email:</form:label></td>
						<td class="alignCenter"><form:input type="text" name="email" path="email" /></td>
					</tr>
					<tr><td colspan="2"><form:errors path="email" class="text-danger"></form:errors></td></tr>
					<tr>
						<td><form:label for="password" path="password" class="fw-bold">Password:</form:label></td>
						<td class="alignCenter"><form:input type="password" name="password" path="password"/></td>
					</tr>
					<tr><td colspan="2"><form:errors path="password" class="text-danger"></form:errors></td></tr>
					<tr>
						<td colspan="2"><span class="d-block"><input type="submit" class="btn btn-primary fullWidth"/></span></td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>
</body>
</html>