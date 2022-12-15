package frgp.utn.edu.ar.controllers;

import javax.servlet.ServletConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;
import frgp.utn.edu.ar.dominio.Usuario;
import frgp.utn.edu.ar.servicio.UsuarioServicio;


@Controller
public class UserController {

	@Autowired
	public  UsuarioServicio service;
	
	public void init(ServletConfig config) {
		ApplicationContext ctx = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		
		this.service = (UsuarioServicio) ctx.getBean("serviceBean");
	}
	
	
	//Pagina de Index

	@RequestMapping("IrLogin.html")
	public ModelAndView redireccion(){
		ModelAndView MV = new ModelAndView();
		MV.setViewName("index"); 
		return MV;
	}
	
	@RequestMapping("LogOut.html")
	public ModelAndView redireccionOut(){
		ModelAndView MV = new ModelAndView();
		MV.setViewName("index"); 
		return MV;
	}
	//Pagina de Inicio (Menu)
		@RequestMapping("PaginaInicio.html")
		public ModelAndView redireccionInicio(){
			ModelAndView MV = new ModelAndView();
			MV.setViewName("inicio"); 
			return MV;
		}
	
	
	//@RequestMapping("validarUsuario.html")
	@RequestMapping(value ="validarUsuario.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView validarUsuario(String nombreU, String passU){
		ModelAndView MV = new ModelAndView();
		
		Usuario x = new Usuario();
		x.setNombreU(nombreU);
		x.setPassU(passU);
		
		String Message="";
		String config="";
		boolean banderaN = false;
		boolean banderaP = false;
		
			banderaN = service.validarUsuario(nombreU);
			banderaP = service.validarPassword(passU);
			
			if((banderaN==true) && (banderaP==true))  {
				Message = "Usuario correcto";
				config="alert alert-success";
				MV.addObject("Config", config);
				MV.addObject("Mensaje", Message);
				MV.setViewName("inicio"); 
				return MV;
			}
			else
			{
				config="alert alert-danger";
				Message = "Usuario incorrecto";
				MV.addObject("Config", config);
				MV.addObject("Mensaje", Message);		
				MV.setViewName("index"); 
				return MV;
			}
	}
	
}
