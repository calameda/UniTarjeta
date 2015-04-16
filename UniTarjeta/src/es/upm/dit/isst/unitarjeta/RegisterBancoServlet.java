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
import es.upm.dit.isst.unitarjeta.model.Estampadora;
import es.upm.dit.isst.unitarjeta.model.Usuario;




public class RegisterBancoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		
		List<Estampadora> estampadoras = new ArrayList<Estampadora>();
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		usuarios = dao.listUsuarios();
		estampadoras = dao.listEstampadoras();
		req.getSession().setAttribute("estampadoras", new ArrayList<Estampadora>(estampadoras));
		req.getSession().setAttribute("usuarios", new ArrayList<Usuario>(usuarios));

		RequestDispatcher view = req.getRequestDispatcher("registerBanco.jsp");
        view.forward(req, resp);
		
		}

}
