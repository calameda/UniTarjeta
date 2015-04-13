package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Universidad;
import es.upm.dit.isst.unitarjeta.model.Usuario;


public class CreateUniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		System.out.println("Creating new Uni ");
		int entidad= 2;
		String nombre = checkNull(req.getParameter("nombre"));
		String email = checkNull(req.getParameter("email"));
		String calle = checkNull(req.getParameter("calle"));
		String numero = checkNull(req.getParameter("numero"));
		String password = checkNull(req.getParameter("password"));
		String nick = checkNull(req.getParameter("nick"));
		String banco = checkNull(req.getParameter("banco"));
		String direccionUni = "c/"+calle+" nº"+numero;
		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		dao.addUniversidad(email, password, nick, nombre, banco, direccionUni);
		dao.addUsuario(entidad, email, password, nick);
		
		resp.sendRedirect("/");
	}

	public String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
