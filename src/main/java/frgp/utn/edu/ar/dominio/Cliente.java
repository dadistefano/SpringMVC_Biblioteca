package frgp.utn.edu.ar.dominio;


import java.sql.Timestamp;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="Clientes")
public class Cliente {
	
	@Id
	@Column(name="Dni")
	private int dni;
	
	@NotNull
	@Size(min=2, message=" Campo requerido")
	@Column(name="Nombre")
	private String nombre;
	
	@NotNull
	@Size(min=2, message=" Campo requerido")
	@Column(name="Apellido")
	private String apellido;
	
	@NotNull(message=" Campo requerido")
	@Column(name="Sexo")
	private int sexo;
	/*
	@OneToOne(cascade=(CascadeType.ALL))
	@JoinColumn(name="Nacionalidad")
	private Nacionalidad nacionalidad;
	*/
	@NotNull
	@Size(min=2, message=" Campo requerido")
	@Column(name="FechaNacimiento")
	private String fechaNacimiento;
	
	@NotNull
	@Size(min=2, message=" Campo requerido")
	@Column(name="Direccion")
	private String direccion;
	
	@NotNull
	@Size(min=2, message=" Campo requerido")
	@Column(name="Localidad")
	private String localidad;
	
	@NotNull(message=" Campo requerido")
	@Column(name="nacionalidad")
	private String nacionalidad;
	
	@Email(message=" Campo requerido")
	@Column(name="Correo")
	private String correo;
	
	@NotNull(message=" Campo requerido")
    @Min(value = 11111, message = " Campo incorrecto")
    @Max(value = 99999999, message = " Campo incorrecto")
	@Column(name="Telefono")
	private int telefono;	
	
	public Cliente() {}

	public Cliente(int dni, String nombre, String apellido, int sexo, String fechaNacimiento, String direccion,
			String localidad, String nacionalidad, String correo, int telefono) {
		super();
		this.dni = dni;
		this.nombre = nombre;
		this.apellido = apellido;
		this.sexo = sexo;
		this.fechaNacimiento = fechaNacimiento;
		this.direccion = direccion;
		this.localidad = localidad;
		this.nacionalidad = nacionalidad;
		this.correo = correo;
		this.telefono = telefono;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
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

	public int getSexo() {
		return sexo;
	}

	public void setSexo(int sexo) {
		this.sexo = sexo;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	/*
	public Nacionalidad getNacionalidad() {
		return nacionalidad;
	}
	
	public void setNacionalidad() {
		this.nacionalidad = nacionalidad;
	} */

	@Override
	public String toString() {
		return "Cliente [dni=" + dni + ", nombre=" + nombre + ", apellido=" + apellido + ", sexo=" + sexo
				+ ", fechaNacimiento=" + fechaNacimiento + ", direccion=" + direccion + ", localidad=" + localidad
				+ ", nacionalidad=" + nacionalidad + ", correo=" + correo + ", telefono=" + telefono + "]";
	}


	
}
