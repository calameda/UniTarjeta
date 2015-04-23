package es.upm.dit.isst.unitarjeta.dao;

import java.util.List;

import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Solicitud;


public interface SolicitudDAO {

	public List<Solicitud> listSolicitudes();
	public Solicitud getSolicitud(String nick);
	public List<Solicitud> getSolicitudesUni(String uni);
	public List<Solicitud> getSolicitudesBanco(String banco);
	public List<Solicitud> getSolicitudesEstam(String estam);
	public void add(Estudiante solicitante);
	public Solicitud getSolicitud(long id);
	public void remove (long id);
	public void actualizar(Solicitud solicitud);
	void addBanco(String solicitante, String dni, String universidad,
			String banco, String estampadora, String ncuenta, String cvc,
			String pin, String fecha, boolean cuenta);
}
