package frgp.utn.edu.ar.servicioImpl;

import java.util.ArrayList;

import frgp.utn.edu.ar.dao.ILibroDao;
import frgp.utn.edu.ar.dominio.Libro;
import frgp.utn.edu.ar.servicio.LibroServicio;

public class LibroServicioImpl implements LibroServicio {

	private ILibroDao dataAccessLibro = null;

	public void setDataAccessLibro(ILibroDao dataAccessLibro) {
		this.dataAccessLibro = dataAccessLibro;
	}

	@Override
	public ArrayList<Libro> obtenerLibros() {
		return dataAccessLibro.obtenerLibros();
	}

	@Override
	public Libro obtenerLibroPorID(int id) {
		return dataAccessLibro.obtenerLibroPorID(id);
	}
}
