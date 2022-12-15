<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="/resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Prestamos</title>
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
                    <a href="#">
                        <span class="icon"><i class="fas fa-book"></i></span>
                        <span class="item">Biblioteca</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="fas fa-exchange-alt"></i></span>
                        <span class="item">Prestamos</span>
                    </a>
                </li>
            </ul>
        </div>
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Listado de prestamos</h2>
            </div>
        </div>
        
        <div class="main">
        	<div class="buttons">
        		<button id="new" type="submit">Nuevo Prestamo</button>
        	</div>
        
        	<div>
	        	<table id="myTable" class="table">
	        		<thead>
		        		<tr>
					    <th>LIBRO</th>
					    <th>FECHA</th>
					    <th>CANT DIAS</th>
					    <th>CLIENTE ID</th>
					    <th> </th>
					  	</tr>
	        		</thead>
	        		<tbody>
		        		<tr>
					    <td>978-84-9129-597-6</td>
					    <td>20/04/2022</td>
					    <td>30</td>
					    <td>25</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>978-84-233-6158-8</td>
					    <td>20/04/2022</td>
					    <td>60</td>
					    <td>40</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>978-84-322-4064-5</td>
					    <td>20/04/2022</td>
					    <td>90</td>
					    <td>50</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  				  <tr>
					    <td>978-84-322-4064-5</td>
					    <td>20/04/2022</td>
					    <td>120</td>
					    <td>54</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>978-84-322-4064-5</td>
					    <td>20/04/2022</td>
					    <td>80</td>
					    <td>90</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>458-84-322-4242-5</td>
					    <td>20/10/2022</td>
					    <td>50</td>
					    <td>77</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>784-84-322-4064-5</td>
					    <td>20/06/2022</td>
					    <td>90</td>
					    <td>40</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>656-84-322-4064-5</td>
					    <td>20/05/2022</td>
					    <td>90</td>
					    <td>01</td>
					    <td><a href="#">Devolucion</a></td>
					  </tr>
					  <tr>
					    <td>978-84-322-4064-5</td>
					    <td>20/01/2022</td>
					    <td>90</td>
					    <td>03</td>
					    <td><a href="#">Devolucion</a></td>
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