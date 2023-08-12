package cl.spring.compartimos.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="servicio")
public class Servicio {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int idServicio;
	private String nombre;
	private int precio;
	private int numeroPerfiles;

	public Servicio() {
	}

	public Servicio(int idServicio, String nombre, int precio, int numeroPerfiles) {
		super();
		this.idServicio = idServicio;
		this.nombre = nombre;
		this.precio = precio;
		this.numeroPerfiles = numeroPerfiles;
	}

	public int getIdServicio() {
		return idServicio;
	}

	public String getNombre() {
		return nombre;
	}

	public int getPrecio() {
		return precio;
	}

	public int getNumeroPerfiles() {
		return numeroPerfiles;
	}

	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public void setNumeroPerfiles(int numeroPerfiles) {
		this.numeroPerfiles = numeroPerfiles;
	}
}