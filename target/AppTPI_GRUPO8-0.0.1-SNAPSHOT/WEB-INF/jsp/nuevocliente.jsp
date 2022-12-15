<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="/resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
 	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
	<link href="/resources/css/index.css" rel="stylesheet">
	<!--<link rel="stylesheet" href="<c:url value="/resources/index.css" />"> No esta funcionando pasar el css-->
	<title>Yenny - El Ateneo | Nuevo Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
	<body>
	<div class="wrapper">
        <div id="sidebar">
			<div class="profile">
                <img src="resources/images/logo.png" alt="Logo" class="avatar">
                <h3>Yenny - El Ateneo</h3>
                <p>Administración</p>
            </div>
            <ul id="sidebar-options">
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Inicio</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">Clientes</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-book"></i></span>
                        <span class="item">Biblioteca</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-exchange-alt"></i></span>
                        <span class="item">Prestamos</span>
                    </a>
                </li>
            </ul>
        </div>
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Agregar Nuevo Cliente</h2>
            </div>
        </div>
 
 <form action="altaCliente.html" method="post">
 
        	<div class="main">
	        	<div class="form">
	        		<div id="row">
		        		<label>D.N.I:</label>
		        		<input type="text" id="Dni" name="dniC">
		        	</div>
	        		<div id="row">
	        			<label>Nombre:</label>
	        			<input type="text" id="Nombre" name="nomC">
	        		</div>
	        		<div id="row">
	        			<label>Apellido:</label>
	        			<input type="text" id="Apellido" name="apeC">
	        		</div>

		        	<div id="row">
		        		<label>Sexo:</label>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=1>
		        			<label>Masculino</label>
		        		</div>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=2>
		        			<label>Femenino</label>
		        		</div>
		        		<div class="option">
		        			<input type="radio" id="Sexo" name="sexC" value=3>
		        			<label>Sin especificar</label>
		        		</div>
	        		</div>
	        		<div id="row">
						<label>Fecha de Nacimiento:</label>
		        		<input type="date" id="FechaNacimiento" name="fecNC" min="1910-01-01" max="2022-12-31">
	        		</div>
	        		<div id="row">
		        		<label>Dirección:</label>
		        		<input type="text" id="Direccion" name="dirC">
		        	</div>
		        	<div id="row">
		        		<label>Localidad:</label>
		        		<input type="text" id="Localidad" name="locC">
	        		</div>
	        		<div id="row">
	        			<label>Nacionalidad:</label>
		        		<select id="nacionalidad" name="nacC">
						  <option value="argentina">Argentina</option>
						  <option value="brasil">Brasil</option>
						  <option value="chile">Chile</option>
						  <option value="uruguay">Uruguay</option>
						</select>
					</div>
	        		<div id="row">
		        		<label>Correo Electrónico:</label>
		        		<input type="text" id="Correo" name="correoC">
		        	</div>
					<div id="row">
		        		<label>Teléfono:</label>
		        		<input type="text" id="Telefono" name="telC">
	        		</div>
	        		<div id="row">
	        			<input id="new" type="submit" name="Aceptar" value="Agregar Cliente">
	        		</div>
	        	</div>
	        </div>
        </form>
   
       </div> 
   	${Mensaje}
 
</body>

<footer class="bg-light text-center text-lg-start">
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    TP Integrador de 
    <a class="text-dark" href="#">Laboratorio de computación V</a>
  </div>
</footer>
</body>
</html>