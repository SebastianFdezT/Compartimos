package cl.spring.compartimos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import cl.spring.compartimos.model.entity.Servicio;
import cl.spring.compartimos.model.entity.Usuario;
import cl.spring.compartimos.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	@Autowired
    private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private IUsuarioRepository usuRepo;
	
	public void crearUsuario(Usuario usuario) {
        String contraseñaEncriptada = passwordEncoder.encode(usuario.getContrasena());
        usuario.setContrasena(contraseñaEncriptada);
        usuRepo.save(usuario);
    }
	
	public Usuario obtenerUsuarioPorNombre(String nombreUsuario) {
        return usuRepo.findByUsuario(nombreUsuario);
    }
	
	public Usuario obtenerUsuarioPorId(int id) {
		/* return serRepo.getOne(id); */ //Lazy
		return usuRepo.findById(id).orElse(null);
	}
}
