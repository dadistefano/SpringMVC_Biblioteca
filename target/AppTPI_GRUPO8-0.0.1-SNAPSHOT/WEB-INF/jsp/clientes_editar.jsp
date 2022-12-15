<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="/resources/css/sidebar.css" rel="stylesheet">
	<link href="/resources/css/clientes.css" rel="stylesheet">
	<link href="/resources/css/styles.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
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

	
	   
					<!-- INICIO MAIN -->			        
					<div id="main" class="main">
					
						<jsp:include page="navBar.jsp"></jsp:include>
						
						<br>
						
						<div class="card">
							<div class="card-body">
								<h3 class="card-title text-primary">Editar cliente</h3>
								<p class="text-left small">Editar información del cliente. No podrá editarse el Nro. de DNI</p>
								<hr>
							</div>
							
							<!-- INICIO FORM -->
							<form class="form" name="formulario"  action="AdmAlumnoServlet" method="post" onsubmit=" return validarFormulario()">

								<div class="row">
									<!-- INICIO DE COLUMNA UNO -->
									<div class="col-md-6 text-left">
										<div class="card-body">
											<section>

												<div class="mb-3">
													<div class="col-4 fw-bold">Nombre</div>
													<div><input type="text" name="txtNombre" class="form-control text-primary" value="Carlos" required></div>
												</div>

												<div class="mb-3">
													<div class="col-4 fw-bold">Apellido</div>
													<div><input type="text" name="txtApellido" class="form-control text-primary" value="López" required></div>
												</div>

												<div class="mb-3">
													<div class="col-4 fw-bold">DNI</div>
													<div><input type="text" name="txtDni" class="form-control text-primary" value="42.786.999" required></div>
												</div>																																
												
												<div class="mb-3">
												
												<label class="fw-bold">Sexo</label>
													<select class="form-select form-control text-primary" name="txtSexo">

						  <option value="1">Masculino</option>
						  <option value="2">Femenino</option>
						  <option value="3">Sin especificar</option>

						</select>
												</div>
												
												<div class="mb-3">
													<div class="col-4 fw-bold">Fecha de nacimiento</div>
													<div><input type="date" name="txtNacimiento" class="form-control text-primary" value="13/03/1999" required></div>
												</div>	
																					
												<div class="mb-3">
												
												<label class="fw-bold">Nacionalidad</label>
													<select class="form-select form-control text-primary" name="txtNacionalidad">

						  <option value="argentina">Argentina</option>
						  <option value="brasil">Brasil</option>
						  <option value="chile">Chile</option>
						  <option value="uruguay">Uruguay</option>
						  	</select>

												</div>																						

											</section>
										</div>
									</div>
									<!-- FIN DE COLUMNA UNO -->
									<!-- INICIO DE COLUMNA DOS -->
									<div class="col-md-6 text-left">
										<div class="card-body">
											<section>
	
												<div class="mb-3">
													<div class="col-4 fw-bold">Dirección</div>
													<div><input type="text" name="txtDireccion" class="form-control text-primary" value="Av. de Mayo 352" required></div>
												</div>
																													
												<div class="mb-3">
													<div class="col-4 fw-bold">Localidad</div>
													<div><input type="text" name="txtLocalidad" class="form-control text-primary" value="San Miguel" required></div>
												</div>		

												<div class="mb-3">
													<div class="col-4 fw-bold">Mail</div>
													<div><input type="text" name="txtEmail" class="form-control text-primary" value="carlopez@outlook.com" required></div>
												</div>												

												<div class="mb-3">
													<div class="col-4 fw-bold">Telefono</div>
													<div><input type="tel" name="txtTelefono" class="form-control text-primary" value="011 44659702" required></div>
												</div>												

												<div class="mb-3">
												<label class="fw-bold">Estado</label>
													<select class="form-select form-control text-primary" name="txtEstado">

						  <option value="1">Activo</option>
						  <option value="2">Dado de baja</option>
						  	</select>
												</div>

												<div class="mb-3">
													<label></label>
													<div class="d-grid gap-2 d-md-flex justify-content-md-end">
														<button class="btn btn-info me-md-2" type="submit"
															name="btnCancelarEditarAlumno">Cancelar</button>
														<button class="btn btn-primary me-md-2" type="submit"
															name="btnEditarAlumno">Guardar Cambios</button>
													</div>													
												</div>

											</section>
										</div>
									</div>
									<!-- FIN DE COLUMNA DOS -->
								</div>
							</form>
							<!-- FIN FORM -->

				<!-- FIN MAIN -->

<!-- 				</div> -->
			</div>
<!-- 		</div> -->
<!-- 	</div> -->


	<!-- F O O T E R  -->


	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>

     
     
<!-- FIN EDITAR CLIENTE -->     
     
     
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