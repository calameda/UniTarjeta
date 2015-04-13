package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Estampadora;

public class CreateEstamServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		System.out.println("Creating new Estampadora ");
		int entidad= 4;
		String nombre = checkNull(req.getParameter("nombre"));
		String email = checkNull(req.getParameter("email"));
		String password = checkNull(req.getParameter("password"));
		String nick = checkNull(req.getParameter("nick"));

		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		dao.addEstampadora(email, password, nick, nombre);
		dao.addUsuario(entidad, email, password, nick);
		resp.sendRedirect("admin.jsp");
	}

	public String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}

}
