<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
 	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<!--<link rel="stylesheet" href="<c:url value="/resources/index.css" />"> No esta funcionando pasar el css-->
<title>Yenny - El Ateneo | Login</title>
</head>
<body>
<form action="validarUsuario.html" method="post">


	<header>
		<div class="imgcontainer">
    		<img src="<c:url value="resources/images/logo.png"/>" alt="Logo" class="avatar">
  		</div>
	</header>
	
	<section>
  		<div class="container">
  			<form action="/validarUsuario.html" method="get">
  				<label><b>Usuario</b></label>
    			<input type="text" placeholder="Ingresar Usuario" name="nombreU" required>
    			
    			<label><b>Contraseña</b></label>
    			<input type="password" placeholder="Ingresar Contraseña" name="passU" required>
    			<button type="submit" name="btnAceptar" value="Aceptar">Ingresar</button>
	    		<label>
	      			<input type="checkbox" checked="checked" name="remember"> Recuerdame
	    		</label>
  			</form>
    		

    		
        
    		
    		
  		</div>
  		
	</section>
${Mensaje}

</form>

	<footer>
    	<span class="psw">¿Olvidó su <a href="#">contraseña?</a></span>
	</footer>

</body>
</html>