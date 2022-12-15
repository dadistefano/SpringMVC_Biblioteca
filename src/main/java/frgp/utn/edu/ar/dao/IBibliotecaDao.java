package frgp.utn.edu.ar.dao;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Biblioteca;

public interface IBibliotecaDao {
	
	//Alta de Biblioteca
	public void insertarBiblioteca(Biblioteca biblioteca);

	//Obtiene un biblioteca por id
	public Biblioteca obtenerBibliotecaPorID(int id);

	//Obtiene toda la biblioteca
	public ArrayList<Biblioteca> obtenerBiblioteca();
	
	//Obtiene biblioteca estado en biblioteca =0
	/*public ArrayList<Biblioteca> obtenerBibliotecaInBiblioteca();*/

	//Elimina una biblioteca a partir del id
	public void eliminarBiblioteca(int id);

	//Actualiza los datos de una biblioteca
	public void actualizarBiblioteca(Biblioteca biblioteca);
	
	//Validar el ID de biblioteca
	public boolean validarid(int id);

	//Cambio de estado =En biblioteca (0)
	void actualizarBibliotecaEstado0(int id);

	//Cambio de estado =Prestado (1)
	void actualizarBibliotecaEstado1(int id);

	//Cambio de estado del LIBRO en biblioteca para PRESTAMOS
	boolean validarEstado(int id);

	public ArrayList<Biblioteca> obtenerBibliotecaEPrestado();
	
	
}
