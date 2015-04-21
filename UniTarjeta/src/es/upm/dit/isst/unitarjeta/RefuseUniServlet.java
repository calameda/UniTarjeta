package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Solicitud;

public class RefuseUniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String idS = req.getParameter("id");
		Long id = Long.parseLong(idS);
		SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		UsuarioDAO dao2 = UsuarioDAOImpl.getInstance();
		Solicitud solicitud = dao.getSolicitud(id);
		solicitud.setUniversidad("Fallo");
		
		dao.actualizar(solicitud);
	
		String msgBody = "Su solicitud de tarjeta es erronea. Vuelva realizarla revisando los datos.";

		String dni = solicitud.getDni();

		String email = dao2.getEstudianteDni(dni).getEmail();
		
		dao2.sendmail(email, msgBody);
			
		resp.sendRedirect("/inicioUni");
	}
}
