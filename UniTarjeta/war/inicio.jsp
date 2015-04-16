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
	
		<div style="width: 100%;">
			<div class="line"></div>
			<div class="topLine">
				<div style="float: left;" class="headline">Solicitudes</div>
				<div style="float: right;" class="headline"><a href="/cerrarSesion">Cerrar sesión</a></div>		 
				</div>
			</div>
		</div>
	
		<div style="clear: both;" />
		Tiene <c:out value="${fn:length(solicitudes)}" />
		Solicitudes pendientes.
		<div class="exteriorLis">
			<div id="contenidoList">
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
					
					<c:if test="${x == 2}"> 
					
					<td><a class="done"
						href="<c:url value="/doneUni?id=${solicitud.id}" />">Si</a></td>
					<td><a class="done"
						href="<c:url value="/refuseUni?id=${solicitud.id}" />">No</a></td>
					
					</c:if> 
					
					<c:if test="${x == 3}"> 
					
					<td><a class="done"
						href="<c:url value="/doneBanco?id=${solicitud.id}" />">Si</a></td>
					<td><a class="done"
						href="<c:url value="/refuseBanco?id=${solicitud.id}" />">No</a></td>
					
					</c:if> 
					
					<c:if test="${x == 4}"> 
					
					<td><a class="done"
						href="<c:url value="/doneEstam?id=${solicitud.id}" />">Si</a></td>
					<td><a class="done"
						href="<c:url value="/refuseEstam?id=${solicitud.id}" />">No</a></td>
					
					</c:if> 
						
					
					
				</tr>
			
			</c:forEach>
		</table>
	
	
		</div>
		</div>
	
		
	</body>
</html>
