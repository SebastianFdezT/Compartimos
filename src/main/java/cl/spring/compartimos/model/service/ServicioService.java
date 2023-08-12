package cl.spring.compartimos.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.spring.compartimos.model.entity.Servicio;
import cl.spring.compartimos.model.repository.IServicioRepository;

@Service
public class ServicioService {

	@Autowired
	private IServicioRepository serRepo;

	public ServicioService() {
		super();

	}

	public List<Servicio> getAll() {
		return serRepo.findAll();
	}

	public Servicio getOne(int id) {
		/* return serRepo.getOne(id); */ //Lazy
		return serRepo.findById(id).orElse(null);
	}

	public void create(Servicio s) {
		serRepo.save(s);
	}

	public void update(Servicio s) {
		serRepo.save(s);
	}

	public void delete(int id) {
		serRepo.delete(getOne(id));
	}
}
