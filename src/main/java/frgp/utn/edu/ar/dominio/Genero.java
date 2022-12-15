package frgp.utn.edu.ar.dominio;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Genero")
public class Genero implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="gen_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="gen_descripcion")
	private String descripcion;
	
	//CONSTRUCTOR VACIO
	public Genero() {}
	
	public Genero(String descripcion) {
		this.descripcion=descripcion;
	}
	
	//GETTERS Y SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	// METODO TOSTRING()
	@Override
	public String toString() {
		return "Genero [id=" + id + ", descripcion=" + descripcion + "]";
	}
}
