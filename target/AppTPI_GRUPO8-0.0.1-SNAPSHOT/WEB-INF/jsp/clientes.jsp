<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="/resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
 	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
	<link href="/resources/css/index.css" rel="stylesheet">
	<!--<link rel="stylesheet" href="<c:url value="/resources/index.css" />"> No esta funcionando pasar el css-->
	<title>Yenny - El Ateneo | Clientes</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
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
                    <a href="#"  class="active">
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

<!-- INICIO MAIN -->
<br>        
<div id="main" class="main" >	

      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h3 class="card-title text-primary">Listado de clientes</h3>
              <hr>
                      	<div class="buttons">
        		<button class="btn btn-success" type="submit">+ Nuevo Cliente</button>
        	</div>
        	
 <a href="GrillaClientes.html">Recargar Grillas</a> -->
      
              	<!-- INICIO DE LA TABLA -->      
				<table id="myTable" class="table">
	        		<thead>
					  <tr>
					    <th>D.N.I</th>
					    <th>NOMBRE</th>
					    <th>APELLIDO</th>
					    <th>SEXO</th>
					    <th>NACIONALIDAD</th>
					    <th>FECHA DE NACIMIENTO</th>
					    <th>DIRECCIÓN</th>
					    <th>LOCALIDAD</th>
					    <th>CORREO ELECTRONICO</th>
					    <th>TELÉFONO</th>
					    <th>ACCIONES</th>
					  </tr>
					</thead>
				<!--  <tbody>-->
					<c:forEach items="${listaClientes}" var="item">
					  <tr>
					    <td class="align-middle">${item.dni}</td>
					    <td class="align-middle">${item.nombre}</td>
					    <td class="align-middle">${item.apellido}</td>
					    <td class="align-middle">${item.nombre}</td>
					    <td class="align-middle">${item.sexo}</td>
					    <td class="align-middle">${item.nacionalidad}</td>
					    <td class="align-middle">${item.direccion}</td>
					    <td class="align-middle">${item.localidad}</td>
					    <td class="align-middle">${item.correo}</td>
					    <td class="align-middle">${item.telefono}</td>
					    <td>
					    		<a href="<c:url value='/delete-Cliente-${item.dni}' />"  >Dar Baja</a>
					    		<a href="<c:url value='/edit-Cliente-${item.dni}' />"  >Editar</a>
					    		<!--  <input type="submit" name="#" value="Editar" class="btn btn-warning">	-->													
								<!-- <input type="submit" name="#" value="Dar Baja" class="btn btn-danger"> -->	
					    </td>
					  </tr>
					
					<!-- </tbody>-->
				</c:forEach>
			</table>
			
				<!-- FIN DE LA TABLA -->              
              
            </div>
          </div>
        </div>
      </div>

</div>
<!-- FIN MAIN -->



        	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

<script>
//IDIOMAS ESPAÑOL DEL DATATABLE   
 $(document).ready(function() {
	$('#myTable').DataTable({ 
	"language": {
		"url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
		}
	});
});
</script>
        	

    </div>
</body>
<br>
<footer class="bg-light text-center text-lg-start">
 	 <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    TP Integrador de 
    <a class="text-dark" href="#">Laboratorio de computación V</a>
  </div>
  <!-- Copyright -->
</footer>
</html>