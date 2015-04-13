package es.upm.dit.isst.unitarjeta;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;



public class CreateEstudianteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		System.out.println("Creating new user ");
		int entidad=1;
		String name = checkNull(req.getParameter("nombre"));
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
		String direccion = "c/ "+calle+ " nº"+ numero+" Piso: "+piso;
		String nombre = name+" "+ apellido;
		if (bancoS.equalsIgnoreCase("SI")){ banco = true;}
		
		if (nick.equals("Admin") && password.equals("UniTarjetAdmin")){
			entidad=0;
			UsuarioDAO dao = UsuarioDAOImpl.getInstance();
			dao.addAdmin(email, password, nick);
			dao.addUsuario(entidad, email, password, nick);
			req.getSession().setAttribute("x", entidad);
			resp.sendRedirect("admin.jsp");
			
		}
		else{
		int a =  (int) req.getSession().getAttribute("x");
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		dao.addEstudiante(email, password, nick,
				nombre, dni, direccion, banco,
				universidad);
		dao.addUsuario(entidad, email, password,nick);
		
		sendmail(email,nick,password);
		
		if (a==0){
			resp.sendRedirect("admin.jsp");
			
		}else{
			
			resp.sendRedirect("/");
			
		}
		
		}
		
		resp.sendRedirect("/");
	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
	private void sendmail (String email, String nick, String password){
		
		try{
			  String msgBody="User: " + nick + " Contraseña: " + password;
			 
			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props, null);
			Message msg = new MimeMessage(session);
		
			 
			msg.setFrom(new InternetAddress("unitarjetainfo@gmail.com"));
			msg.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
			msg.setSubject("Aviso – Confirmación registro");
			msg.setText(msgBody);
			Transport.send(msg);
			
		} catch (Exception e){
			    e.printStackTrace();
		}
			    
	}
} 