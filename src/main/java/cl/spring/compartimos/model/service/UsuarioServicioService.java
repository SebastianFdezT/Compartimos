package cl.spring.compartimos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cl.spring.compartimos.model.entity.UsuarioServicio;
import cl.spring.compartimos.model.repository.IUsuarioServicioRepository;

@Service
public class UsuarioServicioService {
	@Autowired
	private IUsuarioServicioRepository ususerRepo;
	
	public void create(UsuarioServicio us) {
		ususerRepo.save(us);
	}
}
