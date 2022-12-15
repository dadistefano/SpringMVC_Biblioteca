package frgp.utn.edu.ar.daoImpl;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import frgp.utn.edu.ar.dao.IPrestamoDao;
import frgp.utn.edu.ar.dominio.Prestamo;

public class PrestamoDaoImpl implements IPrestamoDao{
	
	private HibernateTemplate hibernateTemplate = null;
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertarPrestamo(Prestamo prestamo) {
		this.hibernateTemplate.save(prestamo);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public Prestamo obtenerPrestamoPorID(int id) {
		return this.hibernateTemplate.get(Prestamo.class, id);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public ArrayList<Prestamo> obtenerPrestamos() {
		return (ArrayList<Prestamo>) this.hibernateTemplate.loadAll(Prestamo.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW) //Probar con Int o Integer
	public void eliminarPrestamo(int id) {
		Prestamo prestamo = new Prestamo();
		prestamo.setId(id);
		this.hibernateTemplate.delete(prestamo);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void actualizarPrestamo(Prestamo prestamo) {
		this.hibernateTemplate.update(prestamo);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarid(int id) {
		String hql = "FROM prestamos as p WHERE p.Id = ?";
		ArrayList<Prestamo> prestamo = (ArrayList<Prestamo>) hibernateTemplate.find(hql, id);
		return prestamo.size() > 0 ? true : false;
	}
	


	
	


}
