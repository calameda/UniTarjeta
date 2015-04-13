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


public class RemoveUsuarioServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {
    String nick = req.getParameter("nick");
    UsuarioDAO dao = UsuarioDAOImpl.getInstance();
    long id = dao.getUsuario(nick).getId();
    int entidad = dao.getUsuario(nick).getEntidad();
    dao.removeUsuario(id);
   
    switch(entidad){
    case 0:	long id0 = dao.getAdmin(nick).getId();
    		dao.removeAdmin(id0);
    		break;
    case 1: long id1 = dao.getEstudiante(nick).getId();
			dao.removeEstudiante(id1);
			SolicitudDAO daoS = SolicitudDAOImpl.getInstance();
			Solicitud solicitud = daoS.getSolicitud(nick);
			if (solicitud != null){
			long idS = solicitud.getId();
			daoS.remove(idS);
			}
			break;
    case 2:	long id2 = dao.getUniversidad(nick).getId();
			dao.removeUniversidad(id2);
			break;
    case 3: long id3 = dao.getBanco(nick).getId();
			dao.removeBanco(id3);
			break;
    case 4: long id4 = dao.getEstampadora(nick).getId();
			dao.removeEstampadora(id4);
			break;
	default: break;		
    		 
    }
    
    resp.sendRedirect("/listUsuario");
  }
} 
