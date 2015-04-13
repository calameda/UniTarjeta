<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
	<head>
		<title>Universidad</title>
		<link rel="stylesheet" type="text/css" href="css/bandeja.css" />
		<meta charset="utf-8">
	</head>
	<body>
	
	
		<div style="clear: both;" />
		You have a total number of <c:out value="${fn:length(usuario)}" />
		usuarios.
	
		<table>
			<tr>
				<th>Estudiante</th>
				<th>DNI</th>
				<th>URL</th>
				
			</tr>
	
			<c:forEach items="${usuario}" var="usuario">
				<tr>
					<td><c:out value="${usuario.nombre}" /></td>
					<td><c:out value="${usuario.dni}" /></td>
					<td><c:out value="${usuario.cuenta}" /></td>
					
				</tr>
			</c:forEach>
		</table>
	
	
		<div/>
	
		
	</body>
</html>
