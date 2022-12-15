package frgp.utn.edu.ar.daoImpl;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mysql.cj.Query;
import com.mysql.cj.Session;

import antlr.collections.List;
import frgp.utn.edu.ar.dao.UsuarioDao;
import frgp.utn.edu.ar.dominio.Usuario;

public class UsuarioDaoImpl implements UsuarioDao {

	private HibernateTemplate hibernateTemplate = null;
	
	@Autowired
    private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }
	
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarUsuario(String username) {
		String hql = "FROM Usuario as p WHERE p.nombreU = ?";
		ArrayList<Usuario> user = (ArrayList<Usuario>) hibernateTemplate.find(hql, username);
		return user.size() > 0 ? true : false;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean validarPassword(String userpass) {
		String hql = "FROM Usuario as p WHERE p.passU = ?";
		ArrayList<Usuario> user = (ArrayList<Usuario>) hibernateTemplate.find(hql, userpass);
		return user.size() > 0 ? true : false;
	}
	
}
