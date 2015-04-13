<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Todos</title>
		<link rel="stylesheet" type="text/css" href="css/bandeja.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
		<div style="width: 100%;">
			<div class="line"></div>
			<div class="topLine">
				<div style="float: left;" class="headline">Solicitudes</div>
						 
				</div>
			</div>
		</div>
	
		<div style="clear: both;" />
		Tiene <c:out value="${fn:length(solicitudes)}" />
		Solicitudes pendientes.
	
		<table>
			<tr>
				<th>Solicitudes</th>
				<th>DNI</th>
				<th>Válido</th>
				<th>Inválido</th>
			</tr>
	
			<c:forEach items="${solicitudes}" var="solicitud">
				<tr>
					<td><c:out value="${solicitud.solicitante}" /></td>
					<td><c:out value="${solicitud.dni}" /></td>
					<!-- <td><a class="done"
						href="<c:url value="/done?id=${solicitud.id}" />">Si</a></td>
					<td><a class="done"
						href="<c:url value="/done?id=${solicitud.id}" />">No</a></td>
					-->
				</tr>
			
			</c:forEach>
		</table>
	
	
		<hr />
	
		
	</body>
</html>
