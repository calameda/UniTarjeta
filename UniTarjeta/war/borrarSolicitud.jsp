<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Solicitudes</title>
		<link rel="stylesheet" type="text/css" href="css/admin.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
		<div style="width: 100%;">
			<div class="line"></div>
			<div class="topLine">
				<div style="float: left;" class="headline">Usuarios</div>
						 
				</div>
			</div>
		</div>
	
		<div style="clear: both;" />
		Hay <c:out value="${fn:length(solicitudes)}" />
		Solicitudes en el sistema.
	
		<table>
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
	
	
		<hr />
	
		
	</body>
</html>
