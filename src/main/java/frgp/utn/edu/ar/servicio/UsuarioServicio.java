package frgp.utn.edu.ar.servicio;

import java.util.ArrayList;

import frgp.utn.edu.ar.dominio.Usuario;

public interface UsuarioServicio {

	//ArrayList<Usuario> obtenerUsuarios();

	boolean validarUsuario(String nombreUser);
	boolean validarPassword(String passUser);

	//void insertarUsuario(Usuario usuario);

    //void eliminarUsuario(Integer idUser) ;

	//void actualizarUsuario(Usuario usuario);
	
}
