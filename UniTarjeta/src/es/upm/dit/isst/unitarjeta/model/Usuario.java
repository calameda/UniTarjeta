package es.upm.dit.isst.unitarjeta.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Usuario") 
public class Usuario implements Serializable {


	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private int entidad;
	private String email;
	private String password;
	private String nick;
	
	public Usuario(int entidad, String email, String password, String nick) {
		this.entidad = entidad;
		this.email = email;
		this.password = password;
		this.nick = nick;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getEntidad() {
		return entidad;
	}

	public void setEntidad(int entidad) {
		this.entidad = entidad;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	
	

	
	

	


	
} 