package frgp.utn.edu.ar.dao;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Libro;

public interface ILibroDao {
	

		//Obtiene un biblioteca por id
		public Libro obtenerLibroPorID(int id);

		//Obtiene toda la biblioteca
		public ArrayList<Libro> obtenerLibros();


}
