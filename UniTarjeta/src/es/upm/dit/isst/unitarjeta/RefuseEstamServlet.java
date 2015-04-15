package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Solicitud;

public class RefuseEstamServlet extends HttpServlet {
		  private static final long serialVersionUID = 1L;

		  public void doGet(HttpServletRequest req, HttpServletResponse resp)
		  throws IOException {
		    String id = req.getParameter("id");
		    SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		    Solicitud solicitud = dao.getSolicitud(id);
		    solicitud.setValidaBanco(false);
		    dao.actualizar(solicitud);
		    resp.sendRedirect("/inicioEstam");
		  }		
} 


