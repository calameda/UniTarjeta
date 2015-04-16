<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Todos</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
		<div style="width: 100%;">
			<div class="line"></div>
			<div class="topLine">
				<div style="float: left;" class="headline">Usuarios</div>
				<div style="float: right;" class="headline"><a href="admin.jsp">Atrás</a><a href="/cerrarSesion">Cerrar sesión</a></div>	 
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
	
			<<table>
			<tr>
				<th>Nombre</th>
				<th>Email</th>
				<th>Dni</th>
				<th>Entidad asociada</th>
				<th>Modificar</th>
			</tr>
	 
			<c:forEach items="${estudiantes}" var="estu">
				<tr>
					<td><c:out value="${estu.nombre}" /></td>
					<td><c:out value="${estu.email}" /></td>
					<td></td>
					<td><c:out value="${estu.universidad}" /></td>
					<td><a class="done"
						href="<c:url value="/modificar?nick=${estu.nick}" />">Si</a></td>
				</tr>
			
			</c:forEach>
			<c:forEach items="${universidades}" var="uni">
				<tr>
					<td><c:out value="${uni.nombre}" /></td>
					<td><c:out value="${uni.email}" /></td>
					<td></td>
					<td><c:out value="${uni.banco}" /></td>
					<td><a class="done"
						href="<c:url value="/modificar?nick=${uni.nick}" />">Si</a></td>
				</tr>
			
			</c:forEach>
			
		</table>
		</table>
	
	
		<hr />
	
		
	</body>
</html>