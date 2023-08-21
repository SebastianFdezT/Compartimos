package cl.spring.compartimos.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import cl.spring.compartimos.model.entity.UsuarioServicio;

@Repository
public interface IUsuarioServicioRepository extends JpaRepository<UsuarioServicio, Integer>{

}
