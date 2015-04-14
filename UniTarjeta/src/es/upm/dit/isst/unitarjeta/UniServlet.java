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


import es.upm.dit.isst.unitarjeta.model.Solicitud;
import es.upm.dit.isst.unitarjeta.model.Universidad;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;


public class UniServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		
		List<Solicitud> solicitudes = new ArrayList<Solicitud>();
		
		
		
		Universidad uni = (Universidad) req.getSession().getAttribute("Universidad");
		String nombre = uni.getNombre();
		solicitudes = dao.getSolicitudesUni(nombre);
		int x =  (int) req.getSession().getAttribute("x");
		
		req.getSession().setAttribute("solicitudes", new ArrayList<Solicitud>(solicitudes));
		req.getSession().setAttribute("x", x);
		
		RequestDispatcher view = req.getRequestDispatcher("inicio.jsp");
        view.forward(req, resp);
		
		
	}

}
