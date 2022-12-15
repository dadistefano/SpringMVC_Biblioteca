<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Clientes</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>

    <jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
 
         <div class="section">
            <div class="top_navbar">
            	<h2>Listado de clientes</h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            	<br>
            </div>
        </div>


<!-- INICIO MAIN -->
<br>        


	<div id="main" class="container" style="width:1000px; margin:0 auto;">	

             <div class="buttons">
        		<a class="btn btn-success" type="submit" href="PaginaCliente.html">+ Nuevo Cliente</a>
        	</div>



 			<br>
      
              	<!-- INICIO DE LA TABLA -->      
				<table id="myTable" class="table">
	        		<thead>
					  <tr>
					    <th>D.N.I</th>
					    <th>NOMBRE</th>
					    <th>APELLIDO</th>
					    <th>SEXO</th>
					    <th>PAIS</th>
					    <th>FECHA NACIMIENTO</th>
					    <th>DIRECCIÓN</th>
					    <th>LOCALIDAD</th>
					    <th>MAIL</th>
					    <th>TEL.</th>
					    <th>ACCION </th>
					  	</tr>
					</thead>
				<!--  <tbody>-->
					<c:forEach items="${listaClientes}" var="item">
					  <tr>
					    <td class="align-middle">${item.dni}</td>
					    <td class="align-middle">${item.nombre}</td>
					    <td class="align-middle">${item.apellido}</td>
					    <td class="align-middle">
								    	<c:choose>
										   <c:when test="${item.sexo=='1'}">Masculino <br /></c:when>
										   <c:when test="${item.sexo=='2'}">Femenino <br /></c:when> 
										   <c:otherwise>No Especificado <br /></c:otherwise> 
										</c:choose>
					    </td>
					    <td class="align-middle">${item.nacionalidad}</td>
					    <td class="align-middle">${item.fechaNacimiento}</td>
					    <td class="align-middle">${item.direccion}</td>
					    <td class="align-middle">${item.localidad}</td>
					    <td class="align-middle">${item.correo}</td>
					    <td class="align-middle">${item.telefono}</td>
					    <td>
					    		<a href="<c:url value='/delete-Cliente-${item.dni}' />"  >Dar Baja</a>
					    		<a href="<c:url value='/edit-Cliente-${item.dni}' />"  >Editar</a>
					    </td>
					  </tr>
					
				</c:forEach>
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
        	
</body>
<br>
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</html>