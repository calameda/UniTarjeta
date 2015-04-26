package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Estudiante;

public class CreateEstudianteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		System.out.println("Creating new user ");
		int entidad = 1;
		String name = checkNull(req.getParameter("name"));
		String apellido = checkNull(req.getParameter("apellido"));
		String dni = checkNull(req.getParameter("dni"));
		String email = checkNull(req.getParameter("email"));
		String universidad = checkNull(req.getParameter("universidad"));
		String password = checkNull(req.getParameter("password"));
		String nick = checkNull(req.getParameter("nick"));
		String calle = checkNull(req.getParameter("calle"));
		String numero = checkNull(req.getParameter("numero"));
		String piso = checkNull(req.getParameter("piso"));
		String bancoS = checkNull(req.getParameter("banco"));
		Boolean banco = false;
		String direccion = "c/ " + calle + " nº" + numero + " Piso: " + piso;
		String nombre = name + " " + apellido;
		if (bancoS.equalsIgnoreCase("SI")) {
			banco = true;
		}
		
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();

		if(dao.getEstudiante(nick) == null && dao.getEstudianteDni(dni) == null){
		
			

			if (nick.equals("Admin") && password.equals("UniTarjetAdmin")) {
				entidad = 0;
				dao.addAdmin(email, password, nick);
				dao.addUsuario(entidad, email, password, nick);
				req.getSession().setAttribute("x", entidad);
				resp.sendRedirect("admin.jsp");

			} else {
				int a = (int) req.getSession().getAttribute("x");
				dao.addEstudiante(nick, nombre, dni,
						direccion, banco, universidad);
				dao.addUsuario(entidad, email, password, nick);

				String msg = "Bienvenido a UniTarjeta, Su nombre de usuario es " + nick+", y su contraseña: " + password+", con estos datos podrás acceder al sistema de petición de tarjetas.";
				dao.sendmail(email, msg);

				if (a == 0) {
					HttpSession sesion = req.getSession();
					sesion.setAttribute("error","");
					
					resp.sendRedirect("admin.jsp");

				} else {
					HttpSession sesion = req.getSession();
					sesion.setAttribute("error","");
					sesion.setAttribute("x", entidad);
					sesion.setAttribute("Estudiante", new Estudiante(nick, nombre, dni,direccion, banco, universidad));
					resp.sendRedirect("inicioEstu.jsp");
					

				}
			}
		}else{
			HttpSession sesion = req.getSession();
			if(dao.getEstudiante(nick) != null)
				sesion.setAttribute("error",1);
			if(dao.getEstudianteDni(dni) != null)
				sesion.setAttribute("error",2);
			if(dao.getEstudiante(nick) != null && dao.getEstudianteDni(dni) != null)
				sesion.setAttribute("error",3);
			resp.sendRedirect("/welcome");
		}

			
		

	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}

}