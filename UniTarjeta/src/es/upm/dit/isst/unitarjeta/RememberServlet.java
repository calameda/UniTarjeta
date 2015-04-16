package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Usuario;

public class RememberServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String nick = checkNull(req.getParameter("nick"));
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		Usuario usuario = dao.getUsuario(nick);
		String password = usuario.getPassword();
		String email = usuario.getEmail();
		String msg = "User: " + nick + "  Contraseña: " + password;
		dao.sendmail(email, msg);
		resp.sendRedirect("/");
		
	}


	public String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}