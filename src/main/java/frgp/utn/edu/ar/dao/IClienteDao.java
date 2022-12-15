package frgp.utn.edu.ar.dao;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Cliente;

public interface IClienteDao {
	
	//Alta de cliente
	public void insertarCliente(Cliente cliente);

	//Obtiene una cliente por dni
	public Cliente obtenerClientePorDni(int dni);

	//Obtiene todas los clientes
	public ArrayList<Cliente> obtenerClientes();

	//Elimina una cliente a aprtir del dni
	public void eliminarCliente(Integer idDni);

	//Actualiza los datos de un Cliente
	public void actualizarCliente(Cliente cliente);
	
	public boolean validarDni(int dni);

}
