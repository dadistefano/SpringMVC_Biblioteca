<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<link href="/resources/css/sweetalert.css" rel="stylesheet" type="text/css">
	<script src="/resources/js/sweetalert.min.js" type="text/javascript"/></script>
	

	
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Nuevo Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        
        <div class="section">
            <div class="top_navbar">
            	<h2> Editar Cliente</h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            	<br>
            </div>
        </div>
 
 		<div class="main" style="width:700px; margin:0 auto;">
 		<form:form action="ActualizarCliente.html" modelAttribute="cliente" method="post">
 		 	<div class="container">
        		<div class="${Config}" role="alert">
  				${Mensaje}
				</div>
			</div>
 			<br>
 				<a href="ListarCliente.html" style="text-align: right; display: inline-block; width: 100%; ">LISTA CLIENTE</a> <br>
 			
 				<h5><u></u><b>Editar información del cliente. No podrá editarse el Nro. de DNI</b></u></h5>
 					<br>
 					  <div id="row">
		        		<label>D.N.I:</label>
		        		<td>${cliente.dni}</td>
		        		<form:hidden path="dni"/>
		        	</div><br>
	        		<div id="row">
		        		<label>NOMBRE:</label>
						<form:input type="text" path="nombre"/>
						<form:errors path="nombre" style="color:red"/>
					</div><br>
					<div id="row">
						<label>Apellido:</label>
	        			<form:input path="apellido" />
	        			<form:errors path="apellido" style="color:red"/>
	        		</div><br>

		        	<div id="row">
		        		<label>Sexo:</label>
		        		<div class="option">
		        			<form:radiobutton path="sexo" value="1"/>
		        			<label>Masculino</label>
		        		</div>
		        		<div class="option">
		        			<form:radiobutton path="sexo" value="2"/>
		        			<label>Femenino</label>
		        		</div>
		        		<div class="option">
		        			<form:radiobutton path="sexo" value="3"/>
		        			<label>Sin especificar</label>
		        		</div>
	        		</div><br>
	        		<div id="row">
						<label>Fecha de Nacimiento:</label>
		        		<form:input type="date" path="fechaNacimiento" min="1910-01-01" max="2022-12-31"/>
		        		<form:errors path="fechaNacimiento" style="color:red"/>
	        		</div><br>
	        		<div id="row">
		        		<label>Dirección:</label>
		        		<form:input path="direccion" />
		        		<form:errors path="direccion" style="color:red"/>
		        		
		        	</div><br>
		        	<div id="row">
		        		<label>Localidad:</label>
		        		<form:input path="localidad"/>
		        		<form:errors path="localidad" style="color:red"/>
	        		</div><br>
	        		<div id="row">
	        			<label>Nacionalidad:</label>
		        		<form:select path="nacionalidad">
						  <option value="argentina">Argentina</option>
						  <option value="brasil">Brasil</option>
						  <option value="chile">Chile</option>
						  <option value="uruguay">Uruguay</option>
						  <option value="Colombia">Colombia</option>
						  <option value="Mexico">Mexico</option>
						  <option value="Paraguay">Paraguay</option>
						  <option value="Ecuador">Ecuador</option>
						  <option value="EE.UU">EE.UU</option>
						  <option value="Canada">Canada</option>
						  <option value="España">España</option>
						  <option value="Italia">Italia</option>
						  <option value="Francia">Francia</option>
						</form:select>
						<form:errors path="nacionalidad" style="color:red"/>
					</div><br>
	        		<div id="row">
		        		<label>Correo Electrónico:</label>
		        		<form:input path="correo" />
		        		<form:errors path="correo" style="color:red"/>
		        	</div><br>
					<div id="row">
		        		<label>Teléfono:</label>
		        		<form:input path="telefono" />
		        		<form:errors path="telefono" style="color:red"/>
	        			
		        		
	        		</div><br>
	        		<div id="row">
	        			<input id="new" type="submit" name="Aceptar" value="Modificar Cliente">
	        		</div><br>
        	</form:form>
       </div> 
</body>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>