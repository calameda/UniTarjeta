package es.upm.dit.isst.unitarjeta.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Universidad") 
public class Universidad implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
		private String email;
		private String password;
		private String nick;
		private String nombre;
		private String banco;
		private String direccionUni;
		
		public Universidad(String email, String password, String nick,
				String nombre, String banco, String direccionUni) {
			super();
			this.email = email;
			this.password = password;
			this.nick = nick;
			this.nombre = nombre;
			this.banco = banco;
			this.direccionUni = direccionUni;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
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

		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getBanco() {
			return banco;
		}

		public void setBanco(String banco) {
			this.banco = banco;
		}

		public String getDireccionUni() {
			return direccionUni;
		}

		public void setDireccionUni(String direccionUni) {
			this.direccionUni = direccionUni;
		}
		
		
	
	

}
