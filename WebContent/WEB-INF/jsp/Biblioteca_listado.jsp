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
	
	<title>Yenny - El Ateneo | Biblioteca</title>
	 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"> 
	 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" /> 
	 
	    
    <!-- searchPanes -->
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/1.0.1/css/searchPanes.dataTables.min.css">
    <!-- select -->
    <link href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.min.css">
	
	
</head>
<body>

 <jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        <div class="section">
            <div class="top_navbar">
            	<h2>Listado de libros en la biblioteca</h2>
					<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            </div>
        </div>
        
        <br>        
        
        <div id="main" class="container" style="width:1000px; margin:0 auto;">	
            <div class="buttons">
        	<a class="btn btn-success" type="submit" href="PaginaBiblioteca.html">+ Nuevo LIBRO</a>
        </div>
        </div>
        
        <!-- INICIO MAIN -->
	<br>        

 
	<div id="main" class="container" style="width:1000px; margin:0 auto;">	

              	<!-- INICIO DE LA TABLA -->      
				<table id="myTable" class="table">
	        		<thead>
					  <tr>
					 	<th>ID</th>
					    <th>ISBN</th>
						<th>TÍTULO</th>
						<th>FECHA ALTA</th>
						<th>AUTOR</th>
						<th>ESTADO</th>
						<th> </th>
					  </tr>
					</thead>
				<!--  <tbody> -->
					<c:forEach items="${listaBiblioteca}" var="item">
					 
 							<tr>
							    <td class="align-middle">${item.id}</td>
							    <td class="align-middle">${item.libro.getIsbn()}</td>
							    <td class="align-middle">${item.libro.getTitulo()}</td>
							    <td class="align-middle">${item.fecha}</td>
							    <td class="align-middle">${item.libro.autor.getApellido()}</td>
							    <td class="align-middle">
													    <c:choose>
														    <c:when test="${item.estado=='1'}">
														        Prestado 
														        <br />
														    </c:when>    
														    <c:otherwise>
														        Biblioteca
														        <br />
														    </c:otherwise>
														</c:choose>
													    </td>
							    <td>
							    		<a href="<c:url value='/delete-Biblioteca-${item.id}' />"  >Baja</a>
							    		<a href="<c:url value='/edit-Biblioteca-${item.id}' />"  >/ EditarEstado</a>
							    		<!--  <input type="submit" name="#" value="Editar" class="btn btn-warning">	-->													
										<!-- <input type="submit" name="#" value="Dar Baja" class="btn btn-danger"> -->	
							    </td>
							 </tr>
					
					</c:forEach>
					<!-- </tbody>  -->
			</table>
			
				<!-- FIN DE LA TABLA -->              
              
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

	    <!-- searchPanes   -->
    <script src="https://cdn.datatables.net/searchpanes/1.0.1/js/dataTables.searchPanes.min.js"></script>
    <!-- select -->
    <script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>  


	<script>
	//IDIOMAS ESPAÑOL DEL DATATABLE   
	$(document).ready(function() {
		$('#myTable').DataTable({
	        searchPanes:{
	            cascadePanes:true,
	            dtOpts:{
	                dom:'tp',
	                paging:'true',
	                pagingType:'simple',
	                searching:false
	            }
	        },
	        dom:'Pfrtip'
		});
	});
	</script>

</body>
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</html>