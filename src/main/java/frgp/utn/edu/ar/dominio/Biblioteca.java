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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="Biblioteca")
public class Biblioteca implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// ATRIBUTOS
	@Id
	@Column(name="bib_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=1, message=" Campo requerido")
	@Column(name="bib_fecha")
	private String fecha;
	
	@NotNull(message=" Campo requerido")
	@Column(name="bib_estado")
	private int estado;

	@OneToOne
	@JoinColumn(name="lib_isbn")
	private Libro libro;
	
	public Libro getLibro() {
		return libro;
	}

	public void setLibro(Libro libro) {
		this.libro = libro;
	}

	// CONSTRUCTORES	
	public Biblioteca() {}

	public Biblioteca(Libro libro, String fecha, int estado) {
		this.libro = libro;
		this.fecha = fecha;
		this.estado = estado;
	}
	
	public Biblioteca(int id,Libro libro, String fecha, int estado) {
		this.id = id;
		this.libro = libro;
		this.fecha = fecha;
		this.estado = estado;
	}

	// GETTERS & SETTERS
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}


	@Override
	public String toString() {
		return "Biblioteca [id=" + id + ", fecha=" + fecha + ", estado=" + estado + "]";
	}
}
