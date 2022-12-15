package frgp.utn.edu.ar.dominio;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

@Entity

@Table(name="Libros")
public class Libro implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// PROPIEDADES
	@Id
	@Column(name="lib_isbn")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	@ManyToOne(cascade=CascadeType.ALL, targetEntity=Biblioteca.class)
//	@JoinColumn(name="bib_libro")
	private int isbn;
	
	@Column(name="lib_titulo")
	private String titulo;
	
	@Column(name="lib_fecha_lanzamiento")
	private String fechaLanzamiento;
	
	@Column(name="lib_dioma")
	private String idioma;
	
	@Column(name="lib_cantidad_paginas")
	private int cantPaginas;

	@ManyToOne
	@JoinColumn(name="aut_id")
	//@Column(name="autor")
	private Autor autor;
	
	@Column(name="Descripcion")
	private String descripcion;
	
	@ManyToMany
	@JoinTable(name="generos_x_libro", joinColumns= {@JoinColumn(name="lib_isbn")}, inverseJoinColumns= {@JoinColumn(name="gen_id")})
	private Set<Genero> listaGeneros = new HashSet<Genero>();
	
	// CONSTRUCTORES 
	public Libro() {}
	
	public Libro(int isbn) {
		this.isbn = isbn;
	}

	public Libro(int isbn, String titulo, String fechaLanzamiento, String idioma, int cantPaginas, Autor autor,
			String descripcion, Set<Genero> listaGeneros) {
		super();
		this.isbn = isbn;
		this.titulo = titulo;
		this.fechaLanzamiento = fechaLanzamiento;
		this.idioma = idioma;
		this.cantPaginas = cantPaginas;
		this.autor = autor;
		this.descripcion = descripcion;
		this.listaGeneros = listaGeneros;
	}
	

	public Libro(int isbn, String titulo, String fechaLanzamiento, String idioma, int cantPaginas) {
		super();
		this.isbn = isbn;
		this.titulo = titulo;
		this.fechaLanzamiento = fechaLanzamiento;
		this.idioma = idioma;
		this.cantPaginas = cantPaginas;
	}

	// GETTERS & SETTERS
	public int getIsbn() {
		return isbn;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getFechaLanzamiento() {
		return fechaLanzamiento;
	}

	public void setFechaLanzamiento(String fechaLanzamiento) {
		this.fechaLanzamiento = fechaLanzamiento;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public int getCantPaginas() {
		return cantPaginas;
	}

	public void setCantPaginas(int cantPaginas) {
		this.cantPaginas = cantPaginas;
	}

	public Autor getAutor() {
		return autor;
	}

	public void setAutor(Autor autor) {
		this.autor = autor;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Set<Genero> getListaGeneros() {
		return listaGeneros;
	}

	public void setListaGeneros(Set<Genero> listaGeneros) {
		this.listaGeneros = listaGeneros;
	}

	// METODO TOSTRING()
	@Override
	public String toString() {
		return "Libro [isbn=" + isbn + ", titulo=" + titulo + ", fechaLanzamiento=" + fechaLanzamiento + ", idioma="
				+ idioma + ", cantPaginas=" + cantPaginas + ", autor=" + autor + ", descripcion=" + descripcion
				+ ", listaGeneros=" + listaGeneros + "]";
	}
}
