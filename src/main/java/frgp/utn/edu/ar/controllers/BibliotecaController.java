package frgp.utn.edu.ar.controllers;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import frgp.utn.edu.ar.dominio.Biblioteca;
import frgp.utn.edu.ar.dominio.Cliente;
import frgp.utn.edu.ar.dominio.Libro;
import frgp.utn.edu.ar.servicio.BibliotecaServicio;
import frgp.utn.edu.ar.servicio.LibroServicio;

@Controller
public class BibliotecaController {
	
	@Autowired
	public  BibliotecaServicio service;
	
	@Autowired
	public  LibroServicio serviceLibro;
	
	public void init(ServletConfig config) {
		ApplicationContext ctx = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		
		this.service = (BibliotecaServicio) ctx.getBean("serviceBeanBiblioteca");
	}
	
	//Pagina de biblioteca (Menu)
	@RequestMapping("PaginaBiblioteca.html")
	public ModelAndView redireccionBiblioteca(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaLibros",this.serviceLibro.obtenerLibros());
		MV.setViewName("biblioteca_alta"); 
		return MV;
	}
	
	//Redireccion pagina ListarBiblioteca
	@RequestMapping("ListarBiblioteca.html")
	public ModelAndView redireccionListaBiblioteca(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaBiblioteca",this.service.obtenerBiblioteca());
		MV.setViewName("Biblioteca_listado"); 
		return MV;
	}

	
	@RequestMapping(value ="/altaBiblioteca.html", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView altaBiblioteca(HttpServletRequest request){
		ModelAndView MV = new ModelAndView(); 
		
		
		String idLibro = request.getParameter("idlibro");
		
		Libro libro = this.serviceLibro.obtenerLibroPorID(Integer.parseInt(idLibro));
		
		String fecha = request.getParameter("fecha");
		String estado = request.getParameter("EstadoBit");
		
		
		Biblioteca x = new Biblioteca();
		x.setFecha(fecha);
		x.setLibro(libro);
		x.setEstado(Integer.parseUnsignedInt(estado)); //Al dar de ALTA siempre va a estar en biblioteca
		
		//boolean banderaID = true;
		String Message="";
		String config="";
		
		//banderaID = service.validarid(id);
		//Si es FALSE no existe el id
		//if(banderaID==false)
		//{
			service.insertarBiblioteca(x);
			config="alert alert-success";
			Message = "Libro en Biblioteca agregado";
		//}
		//else
		//{
		//	Message = "No se pudo insertar la Biblioteca";
		//}
		MV.addObject("Config", config);
		MV.addObject("Mensaje", Message);
		MV.addObject("listaLibros",this.serviceLibro.obtenerLibros());
		MV.setViewName("biblioteca_alta"); 
		return MV;
		
	}
	
	@RequestMapping(value ="/GrillaBiblioteca.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView recargarBiblioteca(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaBiblioteca",this.service.obtenerBiblioteca());
		MV.setViewName("Biblioteca_listado"); 
		return MV;
		
	}
	
	@RequestMapping(value = { "/delete-Biblioteca-{ssoID}" }, method = RequestMethod.GET)
    public ModelAndView deleteBiblioteca(@PathVariable int ssoID) {
		service.eliminarBiblioteca(ssoID);
		ModelAndView MV = new ModelAndView();
		MV.setViewName("Biblioteca_listado");
		
		//Enviar mensaje por pantalla
		
		//Listado de Libros actualizado
		MV.addObject("listaBiblioteca",this.service.obtenerBiblioteca());
		MV.setViewName("Biblioteca_listado"); 
		return MV;
    }
	
	@RequestMapping(value = { "/edit-Biblioteca-{ssoId}" }, method = RequestMethod.GET)
    public ModelAndView editBiblioteca(@PathVariable Integer ssoId) {
		
		ModelAndView MV = new ModelAndView();

		MV.addObject("biblioteca",this.service.obtenerBibliotecaPorID(ssoId));
		MV.addObject("listaLibros",this.serviceLibro.obtenerLibros());
		MV.setViewName("biblioteca_editar"); 
		return MV;
    }
	
	@RequestMapping(value ="/ActualizarBiblioteca.html" , method= {RequestMethod.POST})
	public ModelAndView actualizarBiblioteca(@Valid @ModelAttribute("biblioteca") Biblioteca biblioteca, BindingResult resultadoValidacion){
		
		ModelAndView MV = new ModelAndView();
		String Message="";
		String config="";
		
		//Agregar @validaciones
		if(resultadoValidacion.hasErrors()) { //True hay error, False no hay
			config="alert alert-danger";
			Message = "No se pudo Acutalizar el Cliente";
			
		}else
		{
		
			service.actualizarBiblioteca(biblioteca);
			config="alert alert-success";
			Message = "Libro en Biblioteca Actualizado";
		}
		
		MV.addObject("Config", config);
		MV.addObject("Mensaje", Message);
		MV.addObject("listaLibros",this.serviceLibro.obtenerLibros());
		MV.setViewName("biblioteca_editar"); 
		return MV;
	}

}
