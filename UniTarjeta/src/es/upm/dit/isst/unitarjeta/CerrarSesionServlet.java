package es.upm.dit.isst.unitarjeta;

import java.io.IOException;




import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Usuario;


public class CerrarSesionServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		int entidad = (int) req.getSession().getAttribute("x");
		switch(entidad){
		case 0: break;
		case 1: req.getSession().setAttribute("Estudiante", "");
				break;
		case 2:	req.getSession().setAttribute("Universidad", "");
				break;
		case 3: req.getSession().setAttribute("Banco", "");
				break;
		case 4:	req.getSession().setAttribute("Estampadora", "");
				break;
		default: break;		
	}
		
			req.getSession().setAttribute("x", 5);
							
			resp.sendRedirect("/");
			
	}

	
	
}
