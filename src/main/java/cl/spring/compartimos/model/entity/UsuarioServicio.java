package cl.spring.compartimos.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "usuarios_servicio")
public class UsuarioServicio {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idUsuarioServicio;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "servicio_id")
    private Servicio servicio;

    public UsuarioServicio() {
    	
	}
    
	public UsuarioServicio(int idUsuarioServicio, Usuario usuario, Servicio servicio) {
		super();
		this.idUsuarioServicio = idUsuarioServicio;
		this.usuario = usuario;
		this.servicio = servicio;
	}

	public int getIdUsuarioServicio() {
		return idUsuarioServicio;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public Servicio getServicio() {
		return servicio;
	}

	public void setIdUsuarioServicio(int idUsuarioServicio) {
		this.idUsuarioServicio = idUsuarioServicio;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public void setServicio(Servicio servicio) {
		this.servicio = servicio;
	}
}
