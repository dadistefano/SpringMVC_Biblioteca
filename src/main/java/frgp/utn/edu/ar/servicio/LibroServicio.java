package frgp.utn.edu.ar.servicio;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Libro;

public interface LibroServicio {
	
	ArrayList<Libro> obtenerLibros();

	Libro obtenerLibroPorID(int id);

}
