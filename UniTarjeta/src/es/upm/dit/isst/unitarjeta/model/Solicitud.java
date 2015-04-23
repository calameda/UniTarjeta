package es.upm.dit.isst.unitarjeta.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Solicitud") 
public class Solicitud implements Serializable {


	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String solicitante;
	private String dni;
	private String universidad;
	private String banco;
	private String estampadora;
	private String Ncuenta;
	private String cvc;
	private String pin;
	private String fecha;
	private boolean cuenta;
	private boolean validaUni;
	private boolean validaBanco;
	private boolean finished;
	public Solicitud(String solicitante, String dni, String universidad,
			String banco, String estampadora, String ncuenta, String cvc,
			String pin, String fecha, boolean cuenta, boolean validaUni,
			boolean validaBanco, boolean finished) {
		super();
		this.solicitante = solicitante;
		this.dni = dni;
		this.universidad = universidad;
		this.banco = banco;
		this.estampadora = estampadora;
		Ncuenta = ncuenta;
		this.cvc = cvc;
		this.pin = pin;
		this.fecha = fecha;
		this.cuenta = cuenta;
		this.validaUni = validaUni;
		this.validaBanco = validaBanco;
		this.finished = finished;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSolicitante() {
		return solicitante;
	}
	public void setSolicitante(String solicitante) {
		this.solicitante = solicitante;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getUniversidad() {
		return universidad;
	}
	public void setUniversidad(String universidad) {
		this.universidad = universidad;
	}
	public String getBanco() {
		return banco;
	}
	public void setBanco(String banco) {
		this.banco = banco;
	}
	public String getEstampadora() {
		return estampadora;
	}
	public void setEstampadora(String estampadora) {
		this.estampadora = estampadora;
	}
	public String getNcuenta() {
		return Ncuenta;
	}
	public void setNcuenta(String ncuenta) {
		Ncuenta = ncuenta;
	}
	public String getCvc() {
		return cvc;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public boolean isCuenta() {
		return cuenta;
	}
	public void setCuenta(boolean cuenta) {
		this.cuenta = cuenta;
	}
	public boolean isValidaUni() {
		return validaUni;
	}
	public void setValidaUni(boolean validaUni) {
		this.validaUni = validaUni;
	}
	public boolean isValidaBanco() {
		return validaBanco;
	}
	public void setValidaBanco(boolean validaBanco) {
		this.validaBanco = validaBanco;
	}
	public boolean isFinished() {
		return finished;
	}
	public void setFinished(boolean finished) {
		this.finished = finished;
	}
	
	
	

}