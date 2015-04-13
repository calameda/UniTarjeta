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
import es.upm.dit.isst.unitarjeta.model.Usuario;


public class ListUsuarioServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {

	  	UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		usuarios = dao.listUsuarios();
		
		req.getSession().setAttribute("usuarios", new ArrayList<Usuario>(usuarios));
		
		RequestDispatcher view = req.getRequestDispatcher("borrar.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
} 
