package cl.spring.compartimos.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import cl.spring.compartimos.model.entity.Usuario;
import cl.spring.compartimos.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	@Autowired
    private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private IUsuarioRepository usuRepo;
	
	public void crearUsuario(Usuario usuario) {
		
		System.out.println("____________________________");
		System.out.println("//////////////////////////////////" + usuario.getUsuario());
		System.out.println("//////////////////////////////////" + usuario.getContrasena());
		System.out.println("____________________________");
        String contraseñaEncriptada = passwordEncoder.encode(usuario.getContrasena());
        usuario.setContrasena(contraseñaEncriptada);
        usuRepo.save(usuario);
    }
}
