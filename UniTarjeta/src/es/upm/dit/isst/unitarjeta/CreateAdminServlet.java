package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Admin;

public class CreateAdminServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		System.out.println("Creating new Admin ");
		int entidad = 0;
		String email = checkNull(req.getParameter("email"));
		String password = checkNull(req.getParameter("password"));
		String nick = checkNull(req.getParameter("nick"));

		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		dao.addAdmin(email, password, nick);
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
