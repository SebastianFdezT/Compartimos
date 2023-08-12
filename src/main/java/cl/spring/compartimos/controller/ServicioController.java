package cl.spring.compartimos.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.spring.compartimos.model.entity.Servicio;
import cl.spring.compartimos.model.service.ServicioService;

@Controller
public class ServicioController {
	@Autowired
	private ServicioService ps;

	@RequestMapping(value = "/servicios", method = RequestMethod.GET)
	public ModelAndView mostrarServicios() {
		List<Servicio> servicios = ps.getAll();
		return new ModelAndView("servicios", "servicios", servicios);
	}
	
	@GetMapping("/editar-servicio/{id}")
	@Transactional
	public String mostrarPaginaEdicion(@PathVariable int id, Model model) {
	    try {
	        Servicio servicio = ps.getOne(id);
	        model.addAttribute("servicio", servicio);
	        return "editarServicio";
	    } catch (Exception e) {
	        throw new RuntimeException("Error al procesar la solicitud", e);
	    }
	}
	@PostMapping("/actualizar-servicio")
    public String guardarEdicion(@ModelAttribute Servicio servicio) {
        ps.update(servicio);
        return "redirect:/servicios";
    }
	@GetMapping("/crear-servicio")
    public String mostrarFormularioCreacion(Model model) {
        model.addAttribute("servicio", new Servicio());
        return "crearServicio";
    }
	@PostMapping("/crear-servicio")
    public String crearServicio(@ModelAttribute Servicio servicio) {
        ps.create(servicio);
        return "redirect:/servicios";
    }
}
