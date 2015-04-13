package es.upm.dit.isst.unitarjeta;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class WelcomeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		req.getSession().setAttribute("x", 1);
		
		RequestDispatcher view = req.getRequestDispatcher("registerEstu.jsp");
        view.forward(req, resp);
		
		}

}
