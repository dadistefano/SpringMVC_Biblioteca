<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Nuevo Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Agregar Nuevo Prestamo</h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            	<br>
            </div>
        </div>
 
 		<div class="main" style="width:700px; margin:0 auto;">
 		<form action="altaPrestamo.html" method="post" modelAttribute="Mensaje">
 		 	<div class="container">
        		<div class="${Config}" role="alert">
  				${Mensaje}
				</div>
			</div>
 			<br>
 				<a href="ListarPrestamos.html" style="text-align: right; display: inline-block; width: 100%; ">LISTA PRESTAMOS</a> <br>
 					
	        			<div id="row">
	        			<label>Libros:</label>
		        		<select name="idbiblioteca">
		        			<c:forEach items="${listaBiblioteca}" var="item">
							  <option value="${item.getId()}">${item.getId()} - ${item.libro.getTitulo()} - ${item.libro.autor.getApellido()}</option>
							</c:forEach>
						</select>
						
						
						
					</div><br>
					<div id="row">
						<label>Fecha de Alta:</label>
		        		<input type="date" id="FechaAlta" name="fecha" min="1910-01-01" max="2022-12-31" required>
	        		</div><br>	

		        	<div id="row">
		        		<label>Cantidad de Días:</label>
		        		<input type="number" id="CantDias" name="cantdias" min="0" required>
	        		</div><br>
	        		
	        		<div id="row">
	        			<label>Clientes:</label>
							<select name="idcliente">
		                    	<c:forEach items="${listaClientes}" var="item">
		                            <option value="${item.dni}">${item.nombre} ${item.apellido}</option>
		                   	 	</c:forEach>
                			</select>			
					</div>
					
					
	        		
	        		<div id="row">
	        			<input id="new" type="submit" name="Aceptar" value="Agregar Prestamo">
	        		</div><br>
        	</form>
       </div> 

 		
</body>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>