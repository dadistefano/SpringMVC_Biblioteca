package frgp.utn.edu.ar.servicioImpl;

import java.util.ArrayList;

import frgp.utn.edu.ar.dao.UsuarioDao;
import frgp.utn.edu.ar.dominio.Usuario;
import frgp.utn.edu.ar.servicio.UsuarioServicio;

public class UsuarioServicioImpl implements UsuarioServicio{

	private UsuarioDao dataAccess = null;

	public void setDataAccess(UsuarioDao dataAccess) {
		this.dataAccess = dataAccess;
	}
	/*
	@Override
	public ArrayList<Usuario> obtenerUsuarios() {
		return dataAccess.obtenerUsuarios();
	}*/

	@Override
	public boolean validarUsuario(String nombreUser) {
		return dataAccess.validarUsuario(nombreUser);
	}
	@Override
	public boolean validarPassword(String passUser) {
		return dataAccess.validarPassword(passUser);
	}

	/*
	@Override
	public void insertarUsuario(Usuario usuario) {
		 dataAccess.insertarUsuario(usuario);
		
	}*/

	/*
	@Override
	public void eliminarUsuario(Integer idUser) {
		dataAccess.eliminarUsuario(idUser);
		
	}*/

	/*
	@Override
	public void actualizarUsuario(Usuario usuario) {
		dataAccess.actualizarUsuario(usuario);
		
	}*/

}
