package es.upm.dit.isst.unitarjeta;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import javax.servlet.http.HttpSession;

import es.upm.dit.isst.unitarjeta.model.Estampadora;
import es.upm.dit.isst.unitarjeta.model.Solicitud;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;


public class EstamServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		
		List<Solicitud> solicitudes = new ArrayList<Solicitud>();
		
		
		Estampadora estam = (Estampadora) req.getSession().getAttribute("Estampadora");
		String nombre = estam.getNombre();
		solicitudes = dao.getSolicitudesUni(nombre);
		
		req.getSession().setAttribute("solicitudes", new ArrayList<Solicitud>(solicitudes));
		
		RequestDispatcher view = req.getRequestDispatcher("inicio.jsp");
        view.forward(req, resp);
		
		
	}

}
