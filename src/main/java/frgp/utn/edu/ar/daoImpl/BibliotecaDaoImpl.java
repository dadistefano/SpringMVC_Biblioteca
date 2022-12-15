package frgp.utn.edu.ar.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import frgp.utn.edu.ar.dao.IBibliotecaDao;
import frgp.utn.edu.ar.dominio.Biblioteca;

public class BibliotecaDaoImpl implements IBibliotecaDao{
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	private HibernateTemplate hibernateTemplate = null;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }
	
	public void setSessionFactory2(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	public Session getSession() {
        return sessionFactory.openSession();
    }
	
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertarBiblioteca(Biblioteca biblioteca) {
		this.hibernateTemplate.save(biblioteca);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public Biblioteca obtenerBibliotecaPorID(int id){
		return this.hibernateTemplate.get(Biblioteca.class, id);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public ArrayList<Biblioteca> obtenerBiblioteca() {
		return (ArrayList<Biblioteca>) this.hibernateTemplate.loadAll(Biblioteca.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW) //Probar con Int o Integer
	public void eliminarBiblioteca(int id) {
		Biblioteca biblioteca = new Biblioteca();
		biblioteca.setId(id);
		this.hibernateTemplate.delete(biblioteca);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void actualizarBiblioteca(Biblioteca biblioteca) {
		this.hibernateTemplate.update(biblioteca);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarid(int id) {
		String hql = "FROM Biblioteca as b WHERE b.bib_id = ?";
		ArrayList<Biblioteca> biblioteca = (ArrayList<Biblioteca>) hibernateTemplate.find(hql, id);
		return biblioteca.size() > 0 ? true : false;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarEstado(int id) {
		String hql = "FROM Biblioteca as b WHERE b.estado=0 and b.id = ?";
		ArrayList<Biblioteca> biblioteca = (ArrayList<Biblioteca>) hibernateTemplate.find(hql, id);
		return biblioteca.size() > 0 ? true : false;
		
		/*int estado = 1; //"1" esta en prestado
		Session session = sessionFactory.getCurrentSession();
		boolean bandera = false;
		String SQL_QUERY = "FROM Biblioteca as b WHERE b.id = ? and b.estado = ?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, id);
		query.setParameter(1, estado);
		List list = query.list();
		
		if ((list != null) && (list.size()>0)) {
			bandera = true;
		}
		//session.close();
		return bandera;*/
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public ArrayList<Biblioteca> obtenerBibliotecaEPrestado() {
		int estado=1;
		String hql = "FROM Biblioteca as b WHERE b.estado= ?";
		ArrayList<Biblioteca> biblioteca = (ArrayList<Biblioteca>) hibernateTemplate.find(hql, estado);
		
		return biblioteca;
	}
	
	//Cambio de estado =En biblioteca (0)
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void actualizarBibliotecaEstado0(int id) {
		this.hibernateTemplate.bulkUpdate("update Biblioteca as b set b.estado=0 where b.id= ?", id);
		
	}
	
	//Cambio de estado =Prestado (1)
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void actualizarBibliotecaEstado1(int id) { 
		this.hibernateTemplate.bulkUpdate("update Biblioteca as b set b.estado=1 where b.id= ?", id);
		
	}

}
