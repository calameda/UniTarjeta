package es.upm.dit.isst.unitarjeta;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;

public class RefuseUniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String id = req.getParameter("id");
		SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		UsuarioDAO dao2 = UsuarioDAOImpl.getInstance();

		dao.remove(Long.parseLong(id));
		
			String msgBody = "Su solicitud de tarjeta es erronea. Vuelva realizarla revisando los datos.";

			String dni = dao.getSolicitud(id).getDni();

			String email = dao2.getEstudianteDni(dni).getEmail();
			dao2.sendmail(email, msgBody);
			
		resp.sendRedirect("/");
	}
}
