package frgp.utn.edu.ar.servicioImpl;

import java.util.ArrayList;

import frgp.utn.edu.ar.dao.IClienteDao;
import frgp.utn.edu.ar.dominio.Cliente;
import frgp.utn.edu.ar.servicio.ClienteServicio;

public class ClienteServicioImpl implements ClienteServicio {

	private IClienteDao dataAccessCliente = null;

	public void setDataAccessCliente(IClienteDao dataAccessCliente) {
		this.dataAccessCliente = dataAccessCliente;
	}
	
	
	@Override
	public ArrayList<Cliente> obtenerClientes() {
		return dataAccessCliente.obtenerClientes();
	}

	@Override
	public Cliente obtenerClientePorDni(int dni) {
		return dataAccessCliente.obtenerClientePorDni(dni);
	}

	@Override
	public void insertarCliente(Cliente cliente) {
		dataAccessCliente.insertarCliente(cliente);
	}

	@Override
	public void eliminarCliente(Integer idDni) {
		dataAccessCliente.eliminarCliente(idDni);
		
	}

	@Override
	public void actualizarCliente(Cliente cliente) {
		dataAccessCliente.actualizarCliente(cliente);
		
	}

	@Override
	public boolean validarDni(int dni) {
		return dataAccessCliente.validarDni(dni);
	}

}
