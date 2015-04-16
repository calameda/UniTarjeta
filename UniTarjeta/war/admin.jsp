<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<%@page session='true'%>
<title>Admin</title>
</head>
<body>
<div style="float: right;" class="headline"><a href="/cerrarSesion">Cerrar sesión</a></div>
<div style="clear: both;" />
<div class="exterior">
		<div id="contenido">
			<c:if test="${x == 0}"> 
			<p><a href="/welcome">Registra Estudiante</a><span class="registro"></span></p>
			<p><a href="/registerUni">Registra Universidad</a><span class="registro"></span></p>
			<p><a href="/registerBanco">Registra Banco</a><span class="registro"></span></p>
			<p><a href="registerEstam.jsp">Registra Estampadora</a><span class="registro"></span></p>
			<p><a href="registerAdmin.jsp">Registra Administrador</a><span class="registro"></span></p>
			<p><a href="/listUsuario">Borrar Usuario</a><span class="registro"></span></p>
			<p><a href="/listSolicitud">Borrar Solicitud</a><span class="registro"></span></p>
			<p><a href="/listModificar">Modificar</a><span class="registro"></span></p>
			</c:if>
			
		</div>
	</div>
	
</body>
</html>