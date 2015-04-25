package es.upm.dit.isst.unitarjeta;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.UsuarioDAO;
import es.upm.dit.isst.unitarjeta.dao.UsuarioDAOImpl;
import es.upm.dit.isst.unitarjeta.model.Usuario;

public class RememberServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String nick = checkNull(req.getParameter("nick"));
		UsuarioDAO dao = UsuarioDAOImpl.getInstance();
		String email;
		Usuario usuario;
		if(validateEmail(nick)){
		usuario = dao.getUsuarioEmail(nick);
		email=nick;
		}
		else{
		usuario = dao.getUsuario(nick);
		email = usuario.getEmail();
		}
		String password = usuario.getPassword();
		
		String msg = "Le reenviamos su nombre de usuario: " + nick + ", y su ontraseña: " + password+".";
		dao.sendmail(email, msg);
		resp.sendRedirect("/");
		
	}


	public String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
	
		 
	    private static final String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
	            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	 
	    /**
	     * Validate given email with regular expression.
	     * 
	     * @param email
	     *            email for validation
	     * @return true valid email, otherwise false
	     */
	    public boolean validateEmail(String email) {
	 
	        // Compiles the given regular expression into a pattern.
	        Pattern pattern = Pattern.compile(PATTERN_EMAIL);
	 
	        // Match the given input against this pattern
	        Matcher matcher = pattern.matcher(email);
	        return matcher.matches();
	 
	    }
	 
	

}