package es.upm.dit.isst.unitarjeta;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import es.upm.dit.isst.unitarjeta.dao.SolicitudDAO;
import es.upm.dit.isst.unitarjeta.dao.SolicitudDAOImpl;

import es.upm.dit.isst.unitarjeta.model.Estudiante;

public class CreateSolicitudServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		System.out.println("Creating new solicitud ");
		
		
		
		SolicitudDAO SolicitudDao = SolicitudDAOImpl.getInstance();
		HttpSession sesion = req.getSession();
		Estudiante estudiante = (Estudiante) sesion.getAttribute("Estudiante");
		SolicitudDao.add(estudiante);
		resp.sendRedirect("/");
	}

	
} 