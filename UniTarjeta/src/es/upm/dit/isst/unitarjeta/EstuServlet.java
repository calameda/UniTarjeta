package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Solicitud;


public class EstuServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {
	  	
	  	Estudiante estu = (Estudiante) req.getSession().getAttribute("Estudiante");
		String dni = estu.getDni();
		
	  	SolicitudDAO dao = SolicitudDAOImpl.getInstance();
	  	Solicitud solicitud = dao.getSolicitud(dni);
	  	boolean a = solicitud.isValidaUni();
	  	boolean b = solicitud.isValidaBanco();
	  	boolean c = solicitud.isFinished();
	  	int estado = 0;
	  	String fallo = "Fallo";
	  	if (a == true &&  b == false && c == false) estado =1;
	  	if (a == true &&  b == true && c == false) estado =2;
	  	if (a == true &&  b == true && c == true) estado =3;
	  	if (solicitud.getUniversidad() == fallo) estado =4;
	  	
		req.getSession().setAttribute("estado", estado);
		RequestDispatcher view = req.getRequestDispatcher("estudiante.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
} 
