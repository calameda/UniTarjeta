package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;

public class DoneEstamServlet extends HttpServlet {
		  private static final long serialVersionUID = 1L;

		  public void doGet(HttpServletRequest req, HttpServletResponse resp)
		  throws IOException {
		    String id = req.getParameter("id");
		    SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		    dao.getSolicitud(id).setFinished(true);
		    resp.sendRedirect("/inicioEstam");
		  }		
} 


