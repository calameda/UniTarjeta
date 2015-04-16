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
import es.upm.dit.isst.unitarjeta.model.Banco;
import es.upm.dit.isst.unitarjeta.model.Estampadora;
import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Universidad;

public class ListModificarServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {

	  	UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		
	  	List<Estudiante> estu = new ArrayList<Estudiante>();
	  	estu = dao.listEstudiantes();
	  	List<Universidad> uni = new ArrayList<Universidad>();
	  	uni = dao.listUniversidades();
	  	List<Banco> banco = new ArrayList<Banco>();
	  	banco = dao.listBancos();
	  	List<Estampadora> estam = new ArrayList<Estampadora>();
	  	estam = dao.listEstampadoras();
	  	req.getSession().setAttribute("estudiantes", new ArrayList<Estudiante>(estu));
		req.getSession().setAttribute("universidades", new ArrayList<Universidad>(uni));
		req.getSession().setAttribute("bancos", new ArrayList<Banco>(banco));
		req.getSession().setAttribute("estampadoras", new ArrayList<Estampadora>(estam));
	
		
		RequestDispatcher view = req.getRequestDispatcher("modificar.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
} 
