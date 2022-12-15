package frgp.utn.edu.ar.dominio;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="Prestamos")
public class Prestamo implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@Column(name="Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	/* 
	 @ManyToOne(cascade=(CascadeType.ALL))
	 @JoinColumn(name="Isbn")
	 private Biblioteca biblioteca;
	 */
	
	@ManyToOne
	@JoinColumn(name="biblioteca")
	private Biblioteca biblioteca;
	 
	public Biblioteca getBiblioteca() {
		return biblioteca;
	}

	public void setBiblioteca(Biblioteca biblioteca) {
		this.biblioteca = biblioteca;
	}

	@Column(name="FechaPrestamo")
	private String fechaPrestamo;
	
	@Column(name="CantidadDias")
	private int cantDias;
	
	@ManyToOne(cascade=(CascadeType.ALL))
	@JoinColumn(name="Dni")
	private Cliente cliente;
	
	public Prestamo() {}

	public Prestamo(int id, Biblioteca biblioteca, String fechaPrestamo, int cantDias, Cliente cliente) {
		super();
		this.id = id;
		this.biblioteca = biblioteca;
		this.fechaPrestamo = fechaPrestamo;
		this.cantDias = cantDias;
		this.cliente = cliente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFechaPrestamo() {
		return fechaPrestamo;
	}

	public void setFechaPrestamo(String fechaPrestamo) {
		this.fechaPrestamo = fechaPrestamo;
	}

	public int getCantDias() {
		return cantDias;
	}

	public void setCantDias(int cantDias) {
		this.cantDias = cantDias;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	@Override
	public String toString() {
		return "Prestamo [id=" + id + ", biblioteca=" + biblioteca + ", fechaPrestamo=" + fechaPrestamo + ", cantDias="
				+ cantDias + ", cliente=" + cliente + "]";
	}
}
