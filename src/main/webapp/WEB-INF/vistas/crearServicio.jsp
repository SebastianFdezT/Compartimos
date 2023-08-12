<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear servicio</title>
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
			<h1>Crear servicio</h1>
		</div>
		<form action="${pageContext.request.contextPath}/crear-servicio"
			method="post">
			<div class="form-group">
				<label for="nombre">Nombre del servicio: </label> <input type="text"
					class="form-control" id="nombre" name="nombre">
			</div>
			<div class="form-row">
				<div class="form-group col-lg-6">
					<label for="precio">Precio del servicio:</label> <input
						type="number" class="form-control" id="precio" name="precio">
				</div>
				<div class="form-group col-lg-6">
					<label for="numeroPerfiles">Número de perfiles:</label> <input
						type="number" class="form-control" id="numeroPerfiles"
						name="numeroPerfiles">
				</div>
			</div>
			<div class="form-group text-center">
				<input class="btn btn-primary btn-lg btn-block" type="submit"
					name="submit" value="Crear">
			</div>
		</form>
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