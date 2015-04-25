package es.upm.dit.isst.unitarjeta;

import java.io.IOException;





import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class CerrarSesionServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		HttpSession sesion = req.getSession();
		int entidad = (int) req.getSession().getAttribute("x");
		switch(entidad){
		case 0: break;
		case 1: sesion.setAttribute("Estudiante","");
				break;
		case 2:	sesion.setAttribute("Universidad","");
				break;
		case 3: sesion.setAttribute("Banco","");
				break;
		case 4:	sesion.setAttribute("Estampadora","");
				break;
		default: break;		
	}
		
			req.getSession().setAttribute("entidad","");
			sesion.invalidate();
							
			resp.sendRedirect("/");
			
	}

	
	
}
