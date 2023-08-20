package cl.spring.compartimos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import cl.spring.compartimos.model.entity.Servicio;
import cl.spring.compartimos.model.entity.Usuario;
import cl.spring.compartimos.model.service.UsuarioService;

@Controller
public class UsuarioController {
	@Autowired
    private UsuarioService us;
	
	@GetMapping("/crear-usuario")
    public String mostrarFormularioCreacion(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "crearUsuario";
    }
    @PostMapping("/crear-usuario")
    public String crearUsuario(@ModelAttribute Usuario usuario) {
    	System.out.println("____________________________");
		System.out.println("//////////////////////////////////" + usuario.getUsuario());
		System.out.println("//////////////////////////////////" + usuario.getContrasena());
		System.out.println("____________________________");
    	us.crearUsuario(usuario);
        return "redirect:/";
    }
}
