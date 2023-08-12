<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
		<div class="col-lg-6 mx-auto">
			<div class="text-center">
				<h1>Login</h1>
			</div>
			<%

			%>
			<%
			String error = (String) request.getAttribute("error");
			if (error != null && error.equals("true")) {
				out.println("<h3 class='alert alert-danger'>Error de autentificación</h3>");
			}
			%>
			<form name="loginForm" class="form"
				action="${pageContext.request.contextPath}/login" method="post">
				<div class="mb-3">
					<label for="username" class="form-label">Usuario</label> <input
						class="form-control" type="text" name="username" value="">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Contraseña</label> <input
						class="form-control" type="password" name="password">
				</div>
				<div class="mb-3 text-center">
					<input class="btn btn-primary btn-lg btn-block" type="submit"
						name="submit" value="Ingresar">
				</div>
			</form>
		</div>
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