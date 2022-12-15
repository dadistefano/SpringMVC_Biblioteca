package frgp.utn.edu.ar.servicio;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Prestamo;

public interface PrestamoServicio {
	
	ArrayList<Prestamo> obtenerPrestamos();

	Prestamo obtenerPrestamoPorID(int id);

	void insertarPrestamo(Prestamo prestamo);

    void eliminarPrestamo(int id);

	void actualizarPrestamo(Prestamo prestamo);
	
	public boolean validarid(int id);
	

}
