<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<%@page session='true'%>
<title>Admin</title>
</head>
<body>
<div style="float: right;" class="headline"><a href="/cerrarSesion">Cerrar sesi�n</a></div>
<div class="exterior">
		<div id="contenido">

			<p><a href="/welcome">Registra Estudiante</a><span class="registro"></span></p>
			<p><a href="/registerUni">Registra Universidad</a><span class="registro"></span></p>
			<p><a href="/registerBanco">Registra Banco</a><span class="registro"></span></p>
			<p><a href="registerEstam.jsp">Registra Estampadora</a><span class="registro"></span></p>
			<p><a href="registerAdmin.jsp">Registra Administrador</a><span class="registro"></span></p>
			<p><a href="/listUsuario">Borrar Usuario</a><span class="registro"></span></p>
			<p><a href="/listSolicitud">Borrar Solicitud</a><span class="registro"></span></p>
			<p><a href="/listModificar">Modificar</a><span class="registro"></span></p>
			
			
		</div>
	</div>
	
</body>
</html>