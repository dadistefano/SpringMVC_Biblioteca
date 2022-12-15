package frgp.utn.edu.ar.daoImpl;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import frgp.utn.edu.ar.dao.ILibroDao;
import frgp.utn.edu.ar.dominio.Libro;

public class LibroDaoImpl  implements ILibroDao{
	
	private HibernateTemplate hibernateTemplate = null;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public Libro obtenerLibroPorID(int id){
		return this.hibernateTemplate.get(Libro.class, id);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public ArrayList<Libro> obtenerLibros() {
		return (ArrayList<Libro>) this.hibernateTemplate.loadAll(Libro.class);
	}

}
