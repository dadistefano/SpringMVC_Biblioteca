<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Biblioteca</title>
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
                    <a href="#">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">Clientes</span>
                    </a>
                </li>
                <li>
                    <a href="#"  class="active">
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
            	<h2>Listado de libros en la biblioteca</h2>
            </div>

        </div>
        
        <div class="main">
        	
        	<div class="buttons">
        		<button id="new" type="submit">Nuevo Libro</button>
        	</div>
        
        	<div>
	        	<table id="myTable" class="table">
							<thead>
								<tr>
									<th>ISBN</th>
									<th>TÍTULO</th>
									<th>AUTOR</th>
									<th>ESTADO</th>
									<th> </th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>978-84-9129-597-6</td>
									<td>Todas esas cosas que te diré mañana</td>
									<td>BENAVENT, ELÍSABET</td>
									<td>En biblioteca</td>
									<td><a href="#">Editar</a> <a href="#">Eliminar</a></td>
								</tr>
								<tr>
									<td>978-84-339-8121-9</td>
									<td>Aniquilación</td>
									<td>HOUELLEBECQ, MICHEL</td>
									<td>Prestado</td>
									<td><a href="#">Editar</a> <a href="#">Eliminar</a></td>
								</tr>
								<tr>
									<td>978-84-233-6158-8</td>
									<td>El peligro de estar cuerda</td>
									<td>MONTERO, ROSA</td>
									<td>En biblioteca</td>
									<td><a href="#">Editar</a> <a href="#">Eliminar</a></td>
								</tr>
								<tr>
									<td>978-84-322-4064-5</td>
									<td>El camino del fuego</td>
									<td>ORUÑA, MARÍA</td>
									<td>En biblioteca</td>
									<td><a href="#">Editar</a> <a href="#">Eliminar</a></td>
								</tr>
							</tbody>
						</table>
						<!-- FIN DE LA TABLA -->
        	</div>
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
    </div>
</body>
<footer class="bg-light text-center text-lg-start">
 	 <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    TP Integrador de 
    <a class="text-dark" href="#">Laboratorio de computación V</a>
  </div>
  <!-- Copyright -->
</footer>
</html>