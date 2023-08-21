package cl.spring.compartimos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.spring.compartimos.model.entity.Usuario;
import cl.spring.compartimos.model.entity.UsuarioServicio;
import cl.spring.compartimos.model.entity.Servicio;
import cl.spring.compartimos.model.service.ServicioService;
import cl.spring.compartimos.model.service.UsuarioService;
import cl.spring.compartimos.model.service.UsuarioServicioService;

@Controller
public class UsuarioServicioController {
	@Autowired
	private UsuarioService us;

	@Autowired
	private ServicioService ss;
	
	@Autowired
	private UsuarioServicioService uss;

	@GetMapping("/crear-relacion")
	public String mostrarFormularioCrearRelacion(Model model, Authentication authentication) {
	    UserDetails userDetails = (UserDetails) authentication.getPrincipal();
	    Usuario usuarioActual = us.obtenerUsuarioPorNombre(userDetails.getUsername());
	    List<Servicio> servicios = ss.getAll();
	    model.addAttribute("usuarioActual", usuarioActual);
	    model.addAttribute("servicios", servicios);
	    return "crearRelacion";
	}

	@PostMapping("/crear-relacion")
	public String crearRelacion(@RequestParam int idUsuario, @RequestParam int idServicio) {
		Usuario usuario = us.obtenerUsuarioPorId(idUsuario);
		Servicio servicio = ss.getOne(idServicio);

		if (usuario != null && servicio != null) {
			UsuarioServicio usuarioServicio = new UsuarioServicio();
			usuarioServicio.setUsuario(usuario);
			usuarioServicio.setServicio(servicio);
			uss.create(usuarioServicio);
		}

		return "redirect:/";
	}
}
