package es.upm.dit.isst.unitarjeta.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import es.upm.dit.isst.unitarjeta.model.Estudiante;
import es.upm.dit.isst.unitarjeta.model.Solicitud;
import es.upm.dit.isst.unitarjeta.model.Usuario;


public class SolicitudDAOImpl implements SolicitudDAO {

	private static SolicitudDAOImpl instance;

	private SolicitudDAOImpl() {
	}

	public static SolicitudDAOImpl getInstance(){
		if (instance == null)
			instance = new SolicitudDAOImpl();
		return instance;
	}


	@Override
	public List<Solicitud> listSolicitudes() {
		EntityManager em = EMFService.get().createEntityManager();
		// read the existing entries
		Query q = em.createQuery("select m from Solicitud m");
		List<Solicitud> solicitudes = q.getResultList();
		return solicitudes;
	}
	
	@Override
	public Solicitud getSolicitud(String nick){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Solicitud t");
		q.setParameter("nick",nick);
		List<Solicitud> solicitudes = q.getResultList();
		
		em.close();
		if(solicitudes.isEmpty()) return null;
		return solicitudes.get(0);
		
	}

	@Override
	public void add(Estudiante solicitante) {
		
			EntityManager em = EMFService.get().createEntityManager();
			Solicitud solicitud = new Solicitud(solicitante.getNombre(), solicitante.getDni(), solicitante.getUniversidad(), null, null,
					solicitante.isBanco(), false, false, false);
			em.persist(solicitud);
			em.close();
		

	}

	@Override
	public Solicitud getSolicitud(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Solicitud t where t.id = :id");
		q.setParameter("id",id);
		List<Solicitud> solicitudes = q.getResultList();
		em.close();
		if(solicitudes.isEmpty()) return null;
		return solicitudes.get(0);
	}
	
	@Override
	public List<Solicitud> getSolicitudesUni(String uni){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Solicitud t where t.universidad = :uni and t.validaUni = False");
		q.setParameter("uni",uni);
		List<Solicitud> solicitudes = q.getResultList();
		return solicitudes;
	}
	
	@Override
	public List<Solicitud> getSolicitudesBanco(String banco){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Solicitud t where t.banco = :banco and t.validaUni = True and t.validaBanco = False");
		List<Solicitud> solicitudes = q.getResultList();
		return solicitudes;
	}
	
	@Override
	public List<Solicitud> getSolicitudesEstam(String estam){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em
				.createQuery("select t from Solicitud t where t.estampadora = :estam and and t.validaUni = True and t.validaBanco = True and t.finished = False ");
		List<Solicitud> solicitudes = q.getResultList();
		return solicitudes;
	}

	@Override
	public void remove(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Solicitud solicitud = em.find(Solicitud.class, id);
			em.remove(solicitud);
		} finally {
			em.close();
		}
	}
	
	public void actualizar(Solicitud solicitud){
		EntityManager em = EMFService.get().createEntityManager();
		EntityTransaction ts = em.getTransaction();
		
		try{
			ts.begin();
			Solicitud x = em.find(Solicitud.class, solicitud.getId());
			x = solicitud;
			em.persist(x);
			ts.commit();
		} finally {
			
			if (ts.isActive()){
				ts.rollback();
			}
			em.close();
		}
		

	}

}
