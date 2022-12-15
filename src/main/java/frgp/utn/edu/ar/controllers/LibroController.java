package frgp.utn.edu.ar.controllers;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import frgp.utn.edu.ar.dominio.Cliente;
import frgp.utn.edu.ar.servicio.LibroServicio;

@Controller
public class LibroController {
	
	@Autowired
	public  LibroServicio service;
	
	public void init(ServletConfig config) {
		ApplicationContext ctx = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		
		this.service = (LibroServicio) ctx.getBean("serviceBeanLibro");
	}
	//Redireccion pagina NuevoCliente
	@RequestMapping("PaginaLibro.html")
	public ModelAndView redireccionCliente(){
		ModelAndView MV = new ModelAndView();
		MV.setViewName("libro_alta"); 
		return MV;
	}
	

	@RequestMapping(value ="/altaLibro.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView altaLibro(HttpServletRequest request){
		ModelAndView MV = new ModelAndView(); 
		/*
		String dniC = request.getParameter("dniC");
		
		String nomC = request.getParameter("nomC");
		
		String apeC = request.getParameter("apeC");
		
		String sexC = request.getParameter("sexC");
		
		String fecNC = request.getParameter("fecNC");
		
		String dirC = request.getParameter("dirC");
		
		String locC = request.getParameter("locC");
		
		String nacC = request.getParameter("nacC");
		
		String correoC = request.getParameter("correoC");
		
		String telC = request.getParameter("telC");
		
		
		Cliente x = new Cliente();
		x.setDni(Integer.parseInt(dniC));
		x.setNombre(nomC);
		x.setApellido(apeC);
		x.setSexo(Integer.parseInt(sexC));
		x.setFechaNacimiento(fecNC);
		x.setDireccion(dirC);
		x.setLocalidad(locC);
		x.setNacionalidad(nacC);
		x.setCorreo(correoC);
		x.setTelefono(Integer.parseInt(telC));
		
		boolean banderaDNI = true;
		String msj="";
		String config="";
		
		//banderaDNI = service.validarDni(Integer.parseInt(dniC));
		try
		{
			
		
		//Si es FALSE no existe el DNI
		if(banderaDNI==false)
		{
			service.insertarLibro(x);
			config="alert alert-success";
			msj = "Cliente agregado";
		}
		else
		{
			config="alert alert-danger";
			msj = "No se pudo insertar el Cliente";
		}
		}
		catch (Exception e) {
			MV.setViewName("clientes_alta"); 
		}
		
		MV.addObject("Config", config);
		MV.addObject("Mensaje", msj);
		
		MV.setViewName("libro_alta"); */
		return MV;
		
	}
	
	@RequestMapping(value ="/GrillaLibro.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView recargarClientes(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaLibros",this.service.obtenerLibros());
		MV.setViewName("libros_listado"); 
		return MV;
		
	}
	

}
