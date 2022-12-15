package frgp.utn.edu.ar.dominio;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Autores")
public class Autor implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="aut_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="aut_nombre")
	private String nombre;
	
	@Column(name="aut_apellido")
	private String apellido;
	
	@OneToOne
	@JoinColumn(name="nac_id")
	private Nacionalidad nacionalidad;
	
	@Column(name="aut_email")
	private String email;
		
	//CONTRUCTOR VACIO
	public Autor() {}
	
	public Autor(String nombre, String apellido, Nacionalidad nacionalidad, String email) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.nacionalidad = nacionalidad;
		this.email = email;
	}
	
	//GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Nacionalidad getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(Nacionalidad nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	//METODO TOSTRING()
	@Override
	public String toString() {
		return "Autor [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", nacionalidad=" + nacionalidad
				+ ", email=" + email + "]";
	}
}
