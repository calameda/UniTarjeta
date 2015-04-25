<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Borrar Usuarios</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
		<div id ="otro">
		</div>
	
		<div style="width: 100%;">
			<div class="topLine">
				<nav style="float: right;" class="headline"><a href="admin.jsp">Atrás</a><a href="/cerrarSesion">Cerrar sesión</a></nav>		 
				</div>
			</div>
		
	<div class="exteriorLis">
		<div id="contenidoList">
	
		<table>
			<tr>
				<th>Entidad</th>
				<th>Usuario</th>
				<th>Email</th>
				<th>Borrar</th>
			</tr>
	
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td><c:out value="${usuario.entidad}" /></td>
					<td><c:out value="${usuario.nick}" /></td>
					<td><c:out value="${usuario.email}" /></td>
					<td><a class="done"
						href="<c:url value="/removeUsuario?nick=${usuario.nick}" />">Si</a></td>
				</tr>
			
			</c:forEach>
		</table>
		</div>
		</div>
	
	
		<hr />
	
		
	</body>
</html>
