package frgp.utn.edu.ar.dominio;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name="Nacionalidades") //Le decimos que es un tabla
public class Nacionalidad implements Serializable{ //Implementamos la interfaz Serializable
	
	private static final long serialVersionUID = 1L;
	
	@Id //Con esto le indicamos que la clave principal es el ID
	@Column(name="nac_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="nac_descripcion")
	private String descripcion;
	
//	@ManyToOne(cascade= {CascadeType.ALL})
//	@JoinColumn(name="idAutor")
//	private Autor autor;	
	
	//CONSTRUCTORES
	public Nacionalidad() { }

	public Nacionalidad(String descripcion) {
		super();
		this.descripcion = descripcion;
	}

	//GETTERS & SETTERS
	
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
	
	//METODO TOSTRING()
	@Override
	public String toString() {
		return "Nacionalidad [id=" + id + ", descripcion=" + descripcion + "]";
	}
}