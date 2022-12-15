package frgp.utn.edu.ar.servicio;

import java.util.ArrayList;
import frgp.utn.edu.ar.dominio.Biblioteca;

public interface BibliotecaServicio {
	
	ArrayList<Biblioteca> obtenerBiblioteca();

	Biblioteca obtenerBibliotecaPorID(int id);

	void insertarBiblioteca(Biblioteca biblioteca);

    void eliminarBiblioteca(int id);

	void actualizarBiblioteca(Biblioteca biblioteca);
	
	public boolean validarid(int id);

	void actualizarBibliotecaEstado0(int id);

	void actualizarBibliotecaEstado1(int id);
	
	boolean validarEstado(int id);
	
	public ArrayList<Biblioteca> obtenerBibliotecaEPrestado();

}
