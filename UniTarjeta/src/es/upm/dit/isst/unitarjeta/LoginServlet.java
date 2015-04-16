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
import es.upm.dit.isst.unitarjeta.model.Usuario;


public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
			String nick = checkNull(req.getParameter("nick"));
			String password = checkNull(req.getParameter("password"));
		
			
			UsuarioDAO dao = UsuarioDAOImpl.getInstance();
			SolicitudDAO dao2 = SolicitudDAOImpl.getInstance();
			
			Usuario usuario = dao.getUsuario(nick);
			
			
			
			if (usuario != null && usuario.getPassword().equals(password)){
				int entidad = usuario.getEntidad();
				switch(entidad){
					case 0: req.getSession().setAttribute("x", entidad);
							resp.sendRedirect("admin.jsp");
							break;
					case 1: req.getSession().setAttribute("Estudiante", dao.getEstudiante(nick));
							if(dao2.getSolicitud(dao.getEstudiante(nick).getDni()) != null)resp.sendRedirect("/inicioEstu");
							resp.sendRedirect("inicioEstu.jsp");
							break;
					case 2:	req.getSession().setAttribute("x", entidad);
							req.getSession().setAttribute("Universidad", dao.getUniversidad(nick));
							resp.sendRedirect("/inicioUni");
							break;
					case 3: req.getSession().setAttribute("x", entidad);
							req.getSession().setAttribute("Banco", dao.getBanco(nick));
							resp.sendRedirect("/inicioBanco");
							break;
					case 4:	req.getSession().setAttribute("x", entidad);
							req.getSession().setAttribute("Estampadora", dao.getEstampadora(nick));
							resp.sendRedirect("/inicioEstam");
							break;
					default: break;		
				}
				
			
			}
			else{
			resp.sendRedirect("/");
			}
	}

	public String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
