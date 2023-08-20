var editarButtons = document.querySelectorAll(".editarBtn");
var eliminarButtons = document.querySelectorAll(".eliminarBtn");

editarButtons.forEach(function(editarButton) {
	editarButton.addEventListener("click", function() {
		var idServicio = this.getAttribute("data-id");
		window.location.href = "editar-servicio/" + idServicio;
	});
});

eliminarButtons.forEach(function(eliminarButton) {
	eliminarButton.addEventListener("click", function() {
		var idServicio = this.getAttribute("data-id");
		window.location.href = "eliminar-servicio/" + idServicio;
	});
});