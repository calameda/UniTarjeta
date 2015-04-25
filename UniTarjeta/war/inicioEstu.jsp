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
	
		<div style="width: 100%;">
			<div class="topLine">
				<nav style="float: right;" class="headline"><a href="/cerrarSesion">Cerrar sesión</a></nav>		 
				</div>
			</div>
		
		<div id="contenidoRegistro">

				<form action="/newSolicitud" method="post" accept-charset="utf-8">
							
							<p class="sesion">
								<input type="submit"
									value="Create" />
							</p>
						

				</form>
		</div>
	</div>
</body>
</html>