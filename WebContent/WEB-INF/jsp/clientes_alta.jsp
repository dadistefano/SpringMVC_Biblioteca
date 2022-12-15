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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="WebContent/resources/css/sweetalert.css" rel="stylesheet" type="text/css">
	<script src="WebContent/resources/js/sweetalert.min.js"/></script>
	

	<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	 rel="stylesheet">
	 
	 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Nuevo Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Agregar Nuevo Cliente</h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            	<br>
            </div>
        </div>
        
 		<form action="altaCliente.html" method="post" modelAttribute="Mensaje">
 		<div class="main" style="width:700px; margin:0 auto;">
 		
 			<div class="container">
        		<div class="${Config}" role="alert">
  				${Mensaje}
				</div>
			</div>
 			<br>
 				<a href="ListarCliente.html" style="text-align: right; display: inline-block; width: 100%; ">LISTA CLIENTE</a> <br>
 			
	        		<div id="row">
		        		<label>D.N.I:</label>
		        		<input type="number" id="Dni" name="dniC" min="1111" max="99999999" title="Ingrese su correctamente el DNI" required>
		        	</div><br>
	        		<div id="row">
	        			<label>Nombre:</label>
	        			<input type="text" id="Nombre" name="nomC" minlength="2" maxlength="20" required>
	        		
	        		</div><br>
	        		<div id="row">
	        			<label>Apellido:</label>
	        			<input type="text" id="Apellido" name="apeC" minlength="2" maxlength="20" required>
	        		</div><br>

		        	<div id="row">
		        		<label>Sexo:</label>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=1 >
		        			<label>Masculino</label>
		        		</div>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=2>
		        			<label>Femenino</label>
		        		</div>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=3 checked>
		        			<label>Sin especificar</label>
		        		</div>
	        		</div><br>
	        		<div id="row">
						<label>Fecha de Nacimiento:</label>
		        		<input type="date" id="FechaNacimiento" name="fecNC" min="1910-01-01" max="2022-12-31" required>
	        		</div><br>
	        		<div id="row">
		        		<label>Dirección:</label>
		        		<input type="text" id="Direccion" name="dirC" minlength="5" maxlength="20" required>
		        	</div><br>
		        	<div id="row">
		        		<label>Localidad:</label>
		        		<input type="text" id="Localidad" name="locC" minlength="5" maxlength="40" required>
	        		</div><br>
	        		<div id="row">
	        			<label>Nacionalidad:</label>
		        		<select id="nacionalidad" name="nacC" required>
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
						</select>
					</div><br>
	        		<div id="row">
		        		<label>Correo Electrónico:</label>
		        		<input type="email" id="Correo" name="correoC" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required>
		        	</div><br>
					<div id="row">
		        		<label>Teléfono:</label>
		        		<input type="number" id="Telefono" name="telC" min="111111" max="99999999" required>
	        		</div><br>
	        		<div id="row">
	        			<input id="btnAceptarAlta" type="submit" name="Aceptar" value="Agregar Cliente">
	        		</div><br>
       </div> 
	</form>

</body>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>