package frgp.utn.edu.ar.servicioImpl;

import java.util.ArrayList;
import frgp.utn.edu.ar.dao.IBibliotecaDao;
import frgp.utn.edu.ar.dominio.Biblioteca;
import frgp.utn.edu.ar.servicio.BibliotecaServicio;

public class BibliotecaServicioImpl implements BibliotecaServicio {
	
	private IBibliotecaDao dataAccessBiblioteca = null;

	public void setDataAccessBiblioteca(IBibliotecaDao dataAccessBiblioteca) {
		this.dataAccessBiblioteca = dataAccessBiblioteca;
	}
	
	
	@Override
	public ArrayList<Biblioteca> obtenerBiblioteca() {
		return dataAccessBiblioteca.obtenerBiblioteca();
	}

	@Override
	public Biblioteca obtenerBibliotecaPorID(int id) {
		return dataAccessBiblioteca.obtenerBibliotecaPorID(id);
	}

	@Override
	public void insertarBiblioteca(Biblioteca biblioteca) {
		dataAccessBiblioteca.insertarBiblioteca(biblioteca);
	}

	@Override
	public void eliminarBiblioteca(int id) {
		dataAccessBiblioteca.eliminarBiblioteca(id);
		
	}

	@Override
	public void actualizarBiblioteca(Biblioteca biblioteca) {
		dataAccessBiblioteca.actualizarBiblioteca(biblioteca);
		
	}

	@Override
	public boolean validarid(int id) {
		return dataAccessBiblioteca.validarid(id);
	}
	
	@Override
	public void actualizarBibliotecaEstado0(int id) {
		dataAccessBiblioteca.actualizarBibliotecaEstado0(id);
		
	}
	
	@Override
	public void actualizarBibliotecaEstado1(int id) {
		dataAccessBiblioteca.actualizarBibliotecaEstado1(id);
		
	}
	
	//No lo uso, con el filtro de DATATABLE de javascript es suficiente
	@Override
	public ArrayList<Biblioteca> obtenerBibliotecaEPrestado() {
		return dataAccessBiblioteca.obtenerBibliotecaEPrestado();
	}


	@Override
	public boolean validarEstado(int id) {
		return dataAccessBiblioteca.validarEstado(id);
	}
	

}
