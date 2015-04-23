package es.upm.dit.isst.unitarjeta.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Estudiante") 
public class Estudiante implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nick;
	private String nombre;
	private String dni;
	private String direccion;
	private boolean banco;
	private String universidad;
	
	public Estudiante(String nick,
			String nombre, String dni, String direccion, boolean banco,
			String universidad) {
		super();
		this.nick = nick;
		this.nombre = nombre;
		this.dni = dni;
		this.direccion = direccion;
		this.banco = banco;
		this.universidad = universidad;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public boolean isBanco() {
		return banco;
	}

	public void setBanco(boolean banco) {
		this.banco = banco;
	}

	public String getUniversidad() {
		return universidad;
	}

	public void setUniversidad(String universidad) {
		this.universidad = universidad;
	}
	



}
