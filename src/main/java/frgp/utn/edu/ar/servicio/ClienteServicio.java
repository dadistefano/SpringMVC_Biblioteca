package frgp.utn.edu.ar.servicio;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Cliente;

public interface ClienteServicio {
	
	ArrayList<Cliente> obtenerClientes();

	Cliente obtenerClientePorDni(int dni);

	void insertarCliente(Cliente cliente);

    void eliminarCliente(Integer idDni) ;

	void actualizarCliente(Cliente cliente);
	
	public boolean validarDni(int dni);

}
