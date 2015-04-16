package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Solicitud;

public class DoneBancoServlet extends HttpServlet {
		  private static final long serialVersionUID = 1L;

		  public void doGet(HttpServletRequest req, HttpServletResponse resp)
		  throws IOException {
			String idS = req.getParameter("id");
			Long id = Long.parseLong(idS);
		    SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		    Solicitud solicitud = dao.getSolicitud(id);
		    solicitud.setValidaBanco(true);
		    String banco = solicitud.getBanco();
		    UsuarioDAO dao1 = UsuarioDAOImpl.getInstance();
		    String estam = dao1.getBanco(banco).getEstampadora();
		    solicitud.setEstampadora(estam);
		    
		    dao.actualizar(solicitud);
		    
		    resp.sendRedirect("/inicioBanco");
		  }		
} 


