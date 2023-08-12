<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de servicios</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/compartimos/res/css/styles.css">
</head>
<body>
	<%@ include file='navbar.jsp'%>
	<div class="container">
		<div class="text-center">
			<h1>Lista de servicios</h1>
		</div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Id Servicio</th>
					<th scope="col">Servicio</th>
					<th scope="col">Precio</th>
					<th scope="col">Número de perfiles</th>
					<th scope="col">Edición</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="servicio" items="${servicios}">
					<tr>
						<td>${servicio.idServicio}</td>
						<td>${servicio.nombre}</td>
						<td>${servicio.precio}</td>
						<td>${servicio.numeroPerfiles}</td>
						<td><a href="editar-servicio/${servicio.idServicio}">Editar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>