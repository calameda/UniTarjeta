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
import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Solicitud;

public class DoneBancoServlet extends HttpServlet {

		private static final long serialVersionUID = 1L;

		public void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws IOException, ServletException {
			String idS = req.getParameter("id");
			String cvc = checkNull(req.getParameter("cvc"));
			String ncuenta = checkNull(req.getParameter("cuenta"));
			String pin = checkNull(req.getParameter("pin"));
			String fecha = checkNull(req.getParameter("fecha"));
			Long id = Long.parseLong(idS);
			
			SolicitudDAO dao = SolicitudDAOImpl.getInstance();
		    Solicitud solicitud = dao.getSolicitud(id);
		    
		    String banco = solicitud.getBanco();
		    UsuarioDAO dao1 = UsuarioDAOImpl.getInstance();
		    String dni = solicitud.getDni();
		    Estudiante solicitante = dao1.getEstudianteDni(dni);
		    String estam = dao1.getBanco(banco).getEstampadora();
		    solicitud.setEstampadora(estam);
		    dao.addBanco(solicitante.getNombre(), solicitante.getDni(), solicitante.getUniversidad(),
		    		solicitud.getBanco(),estam,ncuenta,cvc,pin,fecha,true);
		    dao.actualizar(solicitud);
		    dao.remove(id);
		    
		    resp.sendRedirect("/inicioBanco");
		    
		  }	
		  public String checkNull(String s) {
				if (s == null) {
					return "";
				}
				return s;
			}
} 


