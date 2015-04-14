package es.upm.dit.isst.unitarjeta.dao;

import java.util.List;

import es.upm.dit.isst.unitarjeta.model.Admin;
import es.upm.dit.isst.unitarjeta.model.Banco;
import es.upm.dit.isst.unitarjeta.model.Estampadora;
import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Universidad;
import es.upm.dit.isst.unitarjeta.model.Usuario;

public interface UsuarioDAO {

	public List<Usuario> listUsuarios();
	public void addEstudiante(String email, String password, String nick,
			String nombre, String dni, String direccion, boolean banco,
			String universidad);
	public void addEstampadora(String email, String password, String nick, String nombre);
	public void addUniversidad(String email, String password, String nick,
			String nombre, String banco, String direccionUni);
	public void addBanco(String email, String password, String nick, String nombre,
			String estampadora);
	public void addAdmin(String email, String password, String nick);
	public void addUsuario(int entidad, String email, String password, String nick);
	public Estudiante getEstudianteDni(String dni);
	public Usuario getUsuario(String nick);
	public Estudiante getEstudiante(String nick);
	public Estampadora getEstampadora(String nick);
	public Universidad getUniversidad(String nick);
	public Banco getBanco(String nick);
	public Admin getAdmin(String nick);
	public void removeUsuario(long id);
	public void removeEstudiante(long id);
	public void removeAdmin(long id);
	public void removeBanco(long id);
	public void removeEstampadora(long id);
	public void removeUniversidad(long id);
	public void sendmail (String email, String msgBody);
	
	
	
}
