<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Listar biblioteca</title>

	<!-- BOOTSTRAP5 -->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
</head>

<body style="background-color: #F6F9FF">
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body">

					<!-- INICIO MAIN  -->
					<div id="main" class="main">

						<h3 class="card-title text-primary">Listado de libros en la biblioteca</h3>
						<hr>


						<!-- INICIO DE LA TABLA -->

						<table id="myTable"
							class="table table-striped table-hover border-success"
							style="width: 100%">
							<thead>
								<tr>
									<th>ISBN</th>
									<th>TÍTULO</th>
									<th>AUTOR</th>
									<th>ESTADO</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>978-84-9129-597-6</td>
									<td>Todas esas cosas que te diré mañana</td>
									<td>BENAVENT, ELÍSABET</td>
									<td>En biblioteca</td>
								</tr>
								<tr>
									<td>978-84-339-8121-9</td>
									<td>Aniquilación</td>
									<td>HOUELLEBECQ, MICHEL</td>
									<td>Prestado</td>
								</tr>
								<tr>
									<td>978-84-233-6158-8</td>
									<td>El peligro de estar cuerda</td>
									<td>MONTERO, ROSA</td>
									<td>En biblioteca</td>
								</tr>
								<tr>
									<td>978-84-322-4064-5</td>
									<td>El camino del fuego</td>
									<td>ORUÑA, MARÍA</td>
									<td>En biblioteca</td>
								</tr>
							</tbody>
						</table>
						<!-- FIN DE LA TABLA -->


					</div>
				</div>
			</div>

		</div>
		<!-- FIN MAIN  -->

	</div>

	<!-- F O O T E R  -->
	<footer id="footer" class="footer">
	<br>
	<div class="copyright text-center">
		TP Integrador de <strong><span>Laboratorio de computación V</span></strong>
	</div>
	</footer>
	
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
</html>