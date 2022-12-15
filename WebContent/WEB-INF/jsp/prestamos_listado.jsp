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
	<title>Yenny - El Ateneo | Prestamos</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Listado de prestamos</h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            </div>
        </div>
        
        <br>
        
        <div id="main" class="container" style="width:1000px; margin:0 auto;">	
             <div class="buttons">
        		<a class="btn btn-success" type="submit" href="PaginaPrestamos.html">+ Nuevo PRESTAMO</a>
        	</div>
        	
        <!-- <a href="GrillaPrestamo.html">Recargar Grillas</a> -->
       
       <br>
	        	<table id="myTable" class="table">
	        		<thead>
		        		<tr>
		        		<th>ID</th>
					    <th>ISBN LIBRO</th>
					    <th>NOMBRE LIBRO</th>
					    <th>ESTADO</th>
					    <th>FECHA ALTA</th>
					    <th>CANT DIAS</th>
					    <th>CLIENTE ID</th>
					    <th> </th>
					  	</tr>
	        		</thead>
	        		<!-- <tbody> -->
					<c:forEach items="${listaPrestamos}" var="item">
 						<tr>
							<td class="align-middle">${item.id}</td>
							<td class="align-middle">${item.biblioteca.libro.getIsbn()}</td>
							<td class="align-middle">${item.biblioteca.libro.getTitulo()}</td>
							<td class="align-middle">
													<c:choose>
														<c:when test="${item.biblioteca.getEstado()=='1'}">
														    Prestado 
														    <br />
														 </c:when>    
														 <c:otherwise>
														     Biblioteca
														     <br />
														  </c:otherwise>
													</c:choose>
							</td>
							<td class="align-middle">${item.fechaPrestamo}</td>
							<td class="align-middle">${item.cantDias}</td>
							 <td class="align-middle">${item.cliente.getDni()}</td>
							 <td>
							    		<a href="<c:url value='/delete-Prestamo-${item.id}' />"  >Devolucion</a>
							    </td>
							  </tr>
							<!-- </tbody> -->
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
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</html>