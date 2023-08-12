package cl.spring.compartimos.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.spring.compartimos.model.entity.Servicio;

@Repository
public interface IServicioRepository extends JpaRepository<Servicio, Integer> {

}
