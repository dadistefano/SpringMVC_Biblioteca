package frgp.utn.edu.ar.daoImpl;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import frgp.utn.edu.ar.dao.IClienteDao;
import frgp.utn.edu.ar.dominio.Cliente;

public class ClienteDaoImpl implements IClienteDao {
	
	private HibernateTemplate hibernateTemplate = null;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertarCliente(Cliente cliente) {
		this.hibernateTemplate.save(cliente);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public Cliente obtenerClientePorDni(int dni) {
		return this.hibernateTemplate.get(Cliente.class, dni);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public ArrayList<Cliente> obtenerClientes() {
		return (ArrayList<Cliente>) this.hibernateTemplate.loadAll(Cliente.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW) //Probar con Int o Integer
	public void eliminarCliente(Integer idDni) {
		Cliente cliente = new Cliente();
		cliente.setDni(idDni);
		this.hibernateTemplate.delete(cliente);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void actualizarCliente(Cliente cliente) {
		this.hibernateTemplate.update(cliente);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarDni(int dni) {
		String hql = "FROM Cliente as c WHERE c.dni = ?";
		ArrayList<Cliente> user = (ArrayList<Cliente>) hibernateTemplate.find(hql, dni);
		return user.size() > 0 ? true : false;
	}
	


}
