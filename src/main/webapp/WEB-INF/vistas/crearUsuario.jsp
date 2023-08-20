<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear usuario</title>
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
			<h1>Crear usuario</h1>
		</div>
		<form action="${pageContext.request.contextPath}/crear-usuario"
			method="post">
			<div class="form-row">
				<div class="form-group col-lg-6">
					<label for="usuario">Nombre de usuario:</label> <input type="text"
						class="form-control" id="usuario" name="usuario">
				</div>
				<div class="form-group col-lg-6">
					<label for="contrasena">Contraseña:</label> <input type="password"
						class="form-control" id="contrasena" name="contrasena">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-lg-6">
					<label for="nombre">Nombre:</label> <input type="text"
						class="form-control" id="nombre" name="nombre">
				</div>
				<div class="form-group col-lg-6">
					<label for="apellido">Apellido:</label> <input type="text"
						class="form-control" id="apellido" name="apellido">
				</div>
			</div>
			<div class="form-group">
				<label for="email">Correo: </label> <input type="email"
					class="form-control" id="email" name="email" placeholder="nombre@ejemplo.com">
			</div>
			<div class="form-group">
				<label for="rol">Rol:</label> <select class="form-control" id="rol"
					name="rol">
					<option>ROLE_proveedor</option>
				</select>
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