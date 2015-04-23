package es.upm.dit.isst.unitarjeta;

import java.io.IOException;




import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CerrarSesionServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		int entidad = (int) req.getSession().getAttribute("x");
		switch(entidad){
		case 0: break;
		case 1: req.getSession().removeAttribute("Estudiante");
				break;
		case 2:	req.getSession().removeAttribute("Universidad");
				break;
		case 3: req.getSession().removeAttribute("Banco");
				break;
		case 4:	req.getSession().removeAttribute("Estampadora");
				break;
		default: break;		
	}
		
			req.getSession().removeAttribute("entidad");
			
							
			resp.sendRedirect("/");
			
	}

	
	
}
