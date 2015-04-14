package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;

public class DoneUniServlet extends HttpServlet {
		  private static final long serialVersionUID = 1L;

		  public void doGet(HttpServletRequest req, HttpServletResponse resp)
		  throws IOException {
		    String id = req.getParameter("id");
		    SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		    dao.getSolicitud(id).setValidaUni(true);
		    String uni = dao.getSolicitud(id).getUniversidad();
		    UsuarioDAO dao1 = UsuarioDAOImpl.getInstance();
		    String banco = dao1.getUniversidad(uni).getBanco();
		    dao.getSolicitud(id).setBanco(banco);
		    resp.sendRedirect("/inicioUni");
		  }		
} 


