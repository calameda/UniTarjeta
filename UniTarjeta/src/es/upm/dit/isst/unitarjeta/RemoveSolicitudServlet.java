package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;


public class RemoveSolicitudServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp)
  throws IOException {
	String idS = req.getParameter("id");
	Long id = Long.parseLong(idS);
    SolicitudDAO dao = SolicitudDAOImpl.getInstance();
    dao.remove(id);
    
    if(req.getAttribute("estado") != null){
    	if((String)req.getSession().getAttribute("estado") == "3"){
    		req.getSession().setAttribute("estado", "");
    		resp.sendRedirect("/");
    	}
    }
    
    /*try{
    int estado = (int) req.getSession().getAttribute("estado");
    if (estado == 3)resp.sendRedirect("/"); 
    }catch(ClassCastException e){
    resp.sendRedirect("/listSolicitud");
    }*/
    resp.sendRedirect("/listSolicitud");
  }
} 
