package es.upm.dit.isst.unitarjeta.dao;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import es.upm.dit.isst.unitarjeta.model.Admin;
import es.upm.dit.isst.unitarjeta.model.Banco;
import es.upm.dit.isst.unitarjeta.model.Estampadora;
import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Solicitud;
import es.upm.dit.isst.unitarjeta.model.Universidad;
import es.upm.dit.isst.unitarjeta.model.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {

	private static UsuarioDAOImpl instance;

	private UsuarioDAOImpl() {
	}

	public static UsuarioDAOImpl getInstance() {
		if (instance == null)
			instance = new UsuarioDAOImpl();
		return instance;
	}

	@Override
	public List<Usuario> listUsuarios() {
		EntityManager em = EMFService.get().createEntityManager();
		// read the existing entries
		Query q = em.createQuery("select m from Usuario m");
		List<Usuario> usuarios = q.getResultList();
		return usuarios;
	}

	@Override
	public void addEstudiante(String email, String password, String nick,
			String nombre, String dni, String direccion, boolean banco,
			String universidad) {

		EntityManager em = EMFService.get().createEntityManager();
		Estudiante usuario = new Estudiante(email, password, nick, nombre, dni,
				direccion, banco, universidad);
		em.persist(usuario);
		em.close();
	}

	@Override
	public void addBanco(String email, String password, String nick,
			String nombre, String estampadora) {
		EntityManager em = EMFService.get().createEntityManager();
		Banco usuario = new Banco(email, password, nick, nombre, estampadora);
		em.persist(usuario);
		em.close();

	}

	@Override
	public void addUniversidad(String email, String password, String nick,
			String nombre, String banco, String direccionUni) {
		EntityManager em = EMFService.get().createEntityManager();
		Universidad usuario = new Universidad(email, password, nick, nombre,
				banco, direccionUni);
		em.persist(usuario);
		em.close();
	}

	@Override
	public void addEstampadora(String email, String password, String nick,
			String nombre) {

		EntityManager em = EMFService.get().createEntityManager();
		Estampadora usuario = new Estampadora(email, password, nick, nombre);
		em.persist(usuario);
		em.close();

	}

	@Override
	public void addAdmin(String email, String password, String nick) {

		EntityManager em = EMFService.get().createEntityManager();
		Admin usuario = new Admin(email, password, nick);
		em.persist(usuario);
		em.close();

	}

	@Override
	public void addUsuario(int entidad, String email, String password,
			String nick) {

		EntityManager em = EMFService.get().createEntityManager();
		Usuario usuario = new Usuario(entidad, email, password, nick);
		em.persist(usuario);
		em.close();

	}

	@Override
	public Usuario getUsuario(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Usuario t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Usuario> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Estudiante getEstudiante(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Estudiante t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Estudiante> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Estudiante getEstudianteDni(String dni) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Estudiante t where t.dni = :dni");
		q.setParameter("dni", dni);
		List<Estudiante> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Universidad getUniversidad(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Universidad t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Universidad> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Banco getBanco(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em.createQuery("select t from Banco t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Banco> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Estampadora getEstampadora(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Estampadora t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Estampadora> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public Admin getAdmin(String nick) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em.createQuery("select t from Admin t where t.nick = :nick");
		q.setParameter("nick", nick);
		List<Admin> usuarios = q.getResultList();
		if (usuarios.isEmpty())
			return null;
		return usuarios.get(0);
	}

	@Override
	public void removeUsuario(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Usuario usuario = em.find(Usuario.class, id);
			em.remove(usuario);
		} finally {
			em.close();
		}
	}

	@Override
	public void removeEstudiante(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Estudiante estudiante = em.find(Estudiante.class, id);
			em.remove(estudiante);
		} finally {
			em.close();
		}

	}

	@Override
	public void removeAdmin(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Admin admin = em.find(Admin.class, id);
			em.remove(admin);
		} finally {
			em.close();
		}
	}

	@Override
	public void removeBanco(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Banco banco = em.find(Banco.class, id);
			em.remove(banco);
		} finally {
			em.close();
		}
	}

	@Override
	public void removeEstampadora(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Estampadora estampadora = em.find(Estampadora.class, id);
			em.remove(estampadora);
		} finally {
			em.close();
		}
	}

	@Override
	public void removeUniversidad(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Universidad universidad = em.find(Universidad.class, id);
			em.remove(universidad);
		} finally {
			em.close();
		}
	}

	@Override
	public void sendmail(String email, String msgBody) {

		try {

			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props, null);
			Message msg = new MimeMessage(session);

			msg.setFrom(new InternetAddress("pablo17993@gmail.com"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
					email));
			msg.setSubject("Aviso – Confirmación registro");
			msg.setText(msgBody);
			Transport.send(msg);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
