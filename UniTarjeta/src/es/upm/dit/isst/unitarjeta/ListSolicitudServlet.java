package es.upm.dit.isst.unitarjeta;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Solicitud;


public class ListSolicitudServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {

	  	SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		
		List<Solicitud> solicitudes = new ArrayList<Solicitud>();
		
		solicitudes = dao.listSolicitudes();
		
		req.getSession().setAttribute("solicitudes", new ArrayList<Solicitud>(solicitudes));
		
		RequestDispatcher view = req.getRequestDispatcher("borrarSolicitud.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
} 
