package frgp.utn.edu.ar.servicioImpl;

import java.util.ArrayList;

import frgp.utn.edu.ar.dao.IPrestamoDao;
import frgp.utn.edu.ar.dominio.Prestamo;
import frgp.utn.edu.ar.servicio.PrestamoServicio;

public class PrestamoServicioImpl implements PrestamoServicio{
	
	private IPrestamoDao dataAccessPrestamo = null;

	public void setDataAccessPrestamo(IPrestamoDao dataAccessPrestamo) {
		this.dataAccessPrestamo = dataAccessPrestamo;
	}
	
	
	@Override
	public ArrayList<Prestamo> obtenerPrestamos() {
		return dataAccessPrestamo.obtenerPrestamos();
	}

	@Override
	public Prestamo obtenerPrestamoPorID(int id) {
		return dataAccessPrestamo.obtenerPrestamoPorID(id);
	}

	@Override
	public void insertarPrestamo(Prestamo prestamo) {
		dataAccessPrestamo.insertarPrestamo(prestamo);
	}

	@Override
	public void eliminarPrestamo(int id) {
		dataAccessPrestamo.eliminarPrestamo(id);
		
	}

	@Override
	public void actualizarPrestamo(Prestamo prestamo) {
		dataAccessPrestamo.actualizarPrestamo(prestamo);
		
	}

	@Override
	public boolean validarid(int id) {
		return dataAccessPrestamo.validarid(id);
	}
	

}
