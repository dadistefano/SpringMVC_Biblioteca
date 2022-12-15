package frgp.utn.edu.ar.controllers;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import frgp.utn.edu.ar.dominio.Biblioteca;
import frgp.utn.edu.ar.dominio.Cliente;
import frgp.utn.edu.ar.dominio.Prestamo;
import frgp.utn.edu.ar.servicio.BibliotecaServicio;
import frgp.utn.edu.ar.servicio.ClienteServicio;
import frgp.utn.edu.ar.servicio.LibroServicio;
import frgp.utn.edu.ar.servicio.PrestamoServicio;

@Controller
public class PrestamoController {
	
	@Autowired
	public  PrestamoServicio service;
	
	@Autowired
	public  ClienteServicio serviceCliente;
	
	@Autowired
	public  LibroServicio serviceLibro;
	
	@Autowired
	public  BibliotecaServicio serviceBiblioteca;
	
	
	public void init(ServletConfig config) {
		ApplicationContext ctx = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		
		this.service = (PrestamoServicio) ctx.getBean("serviceBeanPrestamo");
		this.serviceCliente = (ClienteServicio) ctx.getBean("serviceBeanCliente");
	}
	
	//Pagina de pagina NuevoPrestamo
	@RequestMapping("PaginaPrestamos.html")
	public ModelAndView redireccionPrestamo(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaBiblioteca",this.serviceBiblioteca.obtenerBiblioteca());
		MV.addObject("listaClientes",this.serviceCliente.obtenerClientes());
		MV.setViewName("prestamos_alta"); 
		return MV;
	}
	
	//Redireccion pagina ListarPrestamo
	@RequestMapping("ListarPrestamos.html")
	public ModelAndView redireccionListaCliente(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaPrestamos",this.service.obtenerPrestamos());
		MV.setViewName("prestamos_listado"); 
		return MV;
	}
	

	@RequestMapping(value ="/altaPrestamo.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView altaPrestamo(HttpServletRequest request){
		ModelAndView MV = new ModelAndView();
		
		//int idPrestamo = (int)Math.random();
		
		String idBiblio = request.getParameter("idbiblioteca");
		
		Biblioteca biblioteca = this.serviceBiblioteca.obtenerBibliotecaPorID(Integer.parseInt(idBiblio));
		
		String fecha = request.getParameter("fecha");
		String cantDias = request.getParameter("cantdias");
		
		String idCliente = request.getParameter("idcliente");
		
		Cliente cliente = this.serviceCliente.obtenerClientePorDni(Integer.parseInt(idCliente));
		
		Prestamo x = new Prestamo();
		x.setBiblioteca(biblioteca);
		x.setFechaPrestamo(fecha);
		x.setCantDias(Integer.parseInt(cantDias));
		x.setCliente(cliente);
		
		String Message="";
		String config="";
		
		boolean banderaEstadoBiblio = serviceBiblioteca.validarEstado(Integer.parseInt(idBiblio));

		//Si es FALSE no existe el ID
		if(banderaEstadoBiblio==true)
		{
			serviceBiblioteca.actualizarBibliotecaEstado1(Integer.parseInt(idBiblio));
			service.insertarPrestamo(x);
			config="alert alert-success";
			Message = "Prestamo agregado";
		}
		else
		{
			config="alert alert-danger";
			Message = "ERROR!! El libro en la biblioteca esta Prestamo";
		}
		
		MV.addObject("Config", config);
		MV.addObject("Mensaje", Message);
		MV.addObject("listaBiblioteca",this.serviceBiblioteca.obtenerBiblioteca());
		MV.addObject("listaClientes",this.serviceCliente.obtenerClientes());
		MV.setViewName("prestamos_alta"); 
		return MV;
		
	}
	
	@RequestMapping(value ="/GrillaPrestamo.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView recargarPrestamos(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaPrestamos",this.service.obtenerPrestamos());
		MV.setViewName("prestamos_listado"); 
		return MV;
		
	}
	
	@RequestMapping(value = { "/delete-Prestamo-{ssoID}" }, method = RequestMethod.GET)
    public ModelAndView deletePrestamo(@PathVariable int ssoID) {
		
		Prestamo prestamo = service.obtenerPrestamoPorID(ssoID);
		int IdBilio = prestamo.getBiblioteca().getId();
		//Cambiar estado a "0" en SERVICE BIBLIOTECA
		serviceBiblioteca.actualizarBibliotecaEstado0(IdBilio);
		service.eliminarPrestamo(ssoID);
		
		ModelAndView MV = new ModelAndView();
		MV.setViewName("prestamos");
		
		//Enviar mensaje por pantalla
		
		//Listado de prestamos actualizado
		MV.addObject("listaPrestamos",this.service.obtenerPrestamos());
		MV.setViewName("prestamos_listado"); 
		return MV;
    }

}
