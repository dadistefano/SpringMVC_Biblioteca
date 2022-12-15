package frgp.utn.edu.ar.controllers;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import frgp.utn.edu.ar.dominio.Cliente;
import frgp.utn.edu.ar.servicio.ClienteServicio;

@Controller
public class ClienteController {
	
	@Autowired
	public  ClienteServicio service;
	
	public void init(ServletConfig config) {
		ApplicationContext ctx = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		
		this.service = (ClienteServicio) ctx.getBean("serviceBeanCliente");
	}
	
	//Redireccion pagina NuevoCliente
	@RequestMapping("PaginaCliente.html")
	public String redireccionCliente(Model modelo){
		
		Cliente cliente = new Cliente();
		modelo.addAttribute("Cliente", cliente);
		
		
		return "clientes_alta";
	}
	
	//Redireccion pagina ListarCliente
		@RequestMapping("ListarCliente.html")
		public ModelAndView redireccionListaCliente(){
			ModelAndView MV = new ModelAndView();
			MV.addObject("listaClientes",this.service.obtenerClientes());
			MV.setViewName("clientes_listado"); 
			return MV;
		}

		@RequestMapping(value ="/altaCliente.html" , method= { RequestMethod.GET, RequestMethod.POST})
		public ModelAndView altaCliente(HttpServletRequest request){
			ModelAndView MV = new ModelAndView(); 
			
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
			

			
			banderaDNI = service.validarDni(Integer.parseInt(dniC));
			try
			{
					
				
				//Si es FALSE no existe el DNI
				if(banderaDNI==false)
				{
					service.insertarCliente(x);
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
			
			MV.setViewName("clientes_alta"); 
			return MV;
		}
	
	@RequestMapping(value ="/GrillaClientes.html" , method= { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView recargarClientes(){
		ModelAndView MV = new ModelAndView();
		MV.addObject("listaClientes",this.service.obtenerClientes());
		MV.setViewName("clientes_listado"); 
		return MV;
		
	}
	
	@RequestMapping(value = { "/delete-Cliente-{ssoDni}" }, method = RequestMethod.GET)
    public ModelAndView deleteCliente(@PathVariable Integer ssoDni) {
		service.eliminarCliente(ssoDni);
		ModelAndView MV = new ModelAndView();
		MV.setViewName("clientes_listado");
		
		//Enviar mensaje por pantalla
		
		//Listado de clientes actualizado
		MV.addObject("listaClientes",this.service.obtenerClientes());
		MV.setViewName("clientes_listado"); 
		return MV;
    }
	
	@RequestMapping(value = { "/edit-Cliente-{ssoDni}" }, method = RequestMethod.GET)
    public ModelAndView editCliente(@PathVariable Integer ssoDni) {
		
		ModelAndView MV = new ModelAndView();
		

		MV.addObject("cliente",this.service.obtenerClientePorDni(ssoDni));
		MV.setViewName("clientes_editar"); 
		return MV;
    }
	
	@RequestMapping(value ="/ActualizarCliente.html" , method= {RequestMethod.POST})
	public ModelAndView actualizarCliente(@Valid @ModelAttribute("cliente") Cliente cliente, BindingResult resultadoValidacion){
		
		ModelAndView MV = new ModelAndView();
		String Message="";
		String config="";
		
		//Agregar @validaciones
		if(resultadoValidacion.hasErrors()) { //True hay error, False no hay
			config="alert alert-danger";
			Message = "No se pudo Acutalizar el Cliente";
			
		}else
		{
			service.actualizarCliente(cliente);
			config="alert alert-success";
			Message = "Cliente Actualizado";
			
		}
	
		MV.addObject("Config", config);
		MV.addObject("Mensaje", Message);
		
		MV.setViewName("clientes_editar"); 
		return MV;
	}
	
	
	
}
