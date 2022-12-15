<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Yenny - El Ateneo | Inicio</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/sidebar.jsp" />
        
        <div class="section">
            <div class="top_navbar">
            	<h2>INDEX     </h2>
            	<a type="button" class="btn-close" aria-label="Close" style="position: absolute; right: 0;" href="LogOut.html"></a>
            	WELCOME ADMIN
            </div>
            
        </div>
        
        <div id="main" class="container" style="width:700px; margin:0 auto;">
         	<img src="resources/images/biblioteca_inicio.jpg" alt="Logo" class="avatar"  width="900" height="800">
        </div>
       
<!--   <script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

<script> 
	$(document).ready(function() {
		$('#myTable').DataTable({ 
		"language": {
			"url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
			}
		});
	});
</script>  --> 

</body>
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</html>