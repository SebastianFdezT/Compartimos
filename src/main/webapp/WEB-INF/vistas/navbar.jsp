<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/compartimos">Compartimos</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/compartimos">Inicio</a></li>

				<%
				if (request.isUserInRole("ROLE_administrativo")) {
				%>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Servicios</a>
					<div class="dropdown-menu bg-dark"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="nav-link" href="servicios">Lista de servicios</a> <a
							class="nav-link" href="crear-servicio">Crear un servicio</a>
					</div></li>

				<%
				}
				%>

				<li class="nav-item"><a class="nav-link disabled">Comparte!</a>
					<%
					if (request.getRemoteUser() == null) {
					%>
				<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</nav>
</header>