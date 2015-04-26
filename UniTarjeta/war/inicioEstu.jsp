<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page session='true'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Registro</title>
</head>
<body>
	<div id ="otro">
		</div>
	
		<div style="float: right;" class="headline">
			<a href="/cerrarSesion"><button type="button" class="btn">Cerrar sesión</button></a>
		</div>
		
		
		<div id="contenido" style="padding-top: 100px">
		<div id="contenidoRegistro">

				<form action="/newSolicitud" method="post" accept-charset="utf-8">
							
							<p class="sesion">
								<input type="submit"
									value="Pedir una tarjeta" />
							</p>
						

				</form>
		</div>
		</div>
	</div>
</body>
</html>