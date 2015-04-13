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
				<div style="float: left;" class="headline">Usuarios</div>
						 
				</div>
			</div>
		</div>
	
		<div style="clear: both;" />
		Hay <c:out value="${fn:length(usuarios)}" />
		usuarios en el sistema.
	
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
	
	
		<hr />
	
		
	</body>
</html>
