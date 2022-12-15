package frgp.utn.edu.ar.dao;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Prestamo;

public interface IPrestamoDao {
	
	//Alta de cliente
	public void insertarPrestamo(Prestamo prestamo);
		
	//Obtiene un prestamo por id
	public Prestamo obtenerPrestamoPorID(int id);
	
	//Obtiene todos los prestamos
	public ArrayList<Prestamo> obtenerPrestamos();
	
	//Elimina un prestamo a partir del id
	public void eliminarPrestamo(int id);

	//Actualiza los datos de un Prestamo
	public void actualizarPrestamo(Prestamo prestamo);
		
	public boolean validarid(int id);


}
