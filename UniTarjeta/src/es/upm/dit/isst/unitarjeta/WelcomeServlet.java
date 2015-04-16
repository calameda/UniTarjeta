package es.upm.dit.isst.unitarjeta;


import java.io.IOException;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Solicitud;
import es.upm.dit.isst.unitarjeta.model.Universidad;
import es.upm.dit.isst.unitarjeta.model.Usuario;




public class WelcomeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		try{
		int x =  (int) req.getSession().getAttribute("x");
		if (x != 0){ 
			x=1; 
			req.getSession().setAttribute("x", x);
		}
		
		}catch(NullPointerException e){
			int x=1;
			req.getSession().setAttribute("x", x);	
		}
		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		
		List<Universidad> universidades = new ArrayList<Universidad>();
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		usuarios = dao.listUsuarios();
		universidades = dao.listUniversidades();
		req.getSession().setAttribute("universidades", new ArrayList<Universidad>(universidades));
		req.getSession().setAttribute("usuarios", new ArrayList<Usuario>(usuarios));

		RequestDispatcher view = req.getRequestDispatcher("registerEstu.jsp");
        view.forward(req, resp);
		
		}

}
