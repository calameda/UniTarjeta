<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Solicitudes</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
		<div style="float: right;" class="headline">
			<a href="admin.jsp"><button type="button" class="btn">Atrás</button></a>
			<a href="/cerrarSesion"><button type="button" class="btn">Cerrar sesión</button></a>
		</div>
		
	<div class="exteriorList">
		<div id="contenidoList">
	
		<table class="flat-table">
			<tr>
				<th>Estudiante</th>
				<th>Dni</th>
				<th>Acabado</th>
				<th>Borrar</th>
			</tr>
	
			<c:forEach items="${solicitudes}" var="solicitud">
				<tr>
					<td><c:out value="${solicitud.solicitante}" /></td>
					<td><c:out value="${solicitud.dni}" /></td>
					<td><c:out value="${solicitud.finished}" /></td>
					<td><a class="done"
						href="<c:url value="/removeSolicitud?id=${solicitud.id}" />">Si</a></td>
				</tr>
			
			</c:forEach>
		</table>
	
	
		
	
		</div>
		</div>
	</body>
</html>
