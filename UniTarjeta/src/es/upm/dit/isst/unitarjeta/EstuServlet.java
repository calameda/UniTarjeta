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
	  	String uni = "nada";
  		String chip = "nada";
  		String banco = "nada";
	  	String fallo = "Fallo";
	  	Long id = solicitud.getId();
	  	//String user = "user";
	  	
	  	if (a == true &&  b == false && c == false){
	  		estado =1;
	  		uni = solicitud.getUniversidad();
	  	}
	  	if (a == true &&  b == true && c == false){
	  		estado =2;
	  		uni = solicitud.getUniversidad();
	  		chip = "nada";
	  		banco = solicitud.getBanco();
	  	}
	  	if (a == true &&  b == true && c == true){
	  		estado =3;
	  		uni = solicitud.getUniversidad();
	  		banco = solicitud.getBanco();
	  		chip = "chip";
	  	}
	  	if (solicitud.getUniversidad() == fallo){
	  		estado =4;
	  		uni = "nada";
	  		chip = "nada";
	  		banco = "nada";
	  		
	  	}
	  	
	  	
		req.getSession().setAttribute("estado", estado);
		req.getSession().setAttribute("uni", uni);
		req.getSession().setAttribute("banco", banco);
		req.getSession().setAttribute("chip", chip);
		req.getSession().setAttribute("id", id);
		RequestDispatcher view = req.getRequestDispatcher("estudiante.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
} 
