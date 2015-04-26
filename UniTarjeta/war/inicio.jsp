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
	
		<div id ="otro">
		</div>
	
		<div style="float: right;" class="headline">
			<a href="/cerrarSesion"><button type="button" class="btn">Cerrar sesión</button></a>
		</div>
		
	
		<div style="clear: both;" />
		Tiene <c:out value="${fn:length(solicitudes)}" />
		Solicitudes pendientes.
		<div class="exteriorLis">
			<div id="contenidoList">
		<table class="flat-table">
			<tr>
				<th>Solicitudes</th>
				<th>DNI</th>
				<c:if test="${x == 3}"> 
					<th>PIN</th>
					<th>Número de cuenta</th>
					<th>Fecha de caducidad</th>
					<th>CVC</th>
				</c:if>
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
					
					
					<c:if test="${solicitud.cuenta}"> 
									<form action="/doneBanco" method="post" accept-charset="utf-8"> 
									<input type="hidden" name="id" value="${solicitud.id}">
									
									<td>
										<input class="pin" type="text" name="pin" id="pin"
										value="pin" size="4"
										onBlur="if(this.value == '') this.value = 'PIN'"
										onFocus="if(this.value == 'PIN') this.value = ''" required>
									</td>
									<td><input class="cuenta" type="text" name="cuenta"
										value="cuenta" size="45"
										onBlur="if(this.value == '') this.value = 'Cuenta'"
										onFocus="if(this.value == 'Cuenta') this.value = ''"
										required>
									</td>
									<td>
										<input class="fecha" type="text" name="fecha" id="fecha"
										value="Fecha" size="4"
										onBlur="if(this.value == '') this.value = 'Fecha'"
										onFocus="if(this.value == 'Fecha') this.value = ''" required>
									</td>
									<td><input class="cvc" type="text" name="cvc"
										value="cvc" size="3"
										onBlur="if(this.value == '') this.value = 'CVC'"
										onFocus="if(this.value == 'CVC') this.value = ''"
										required>
									</td>
									<td class="sesion"><input type="submit" value="Create" />
									</form>
									<td><a class="done" href="<c:url value="/refuseBanco?id=${solicitud.id}" />">No</a></td>
							
					
					</c:if>
					<c:if test="${solicitud.cuenta==false}"> 
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><a class="done"
						href="<c:url value="/doneBanco?id=${solicitud.id}"/>">Si</a></td>
						<td><a class="done"
						href="<c:url value="/refuseBanco?id=${solicitud.id}" />">No</a></td>
					</c:if>
					</c:if> 
					
					<c:if test="${x == 4}"> 
					
					
					<td><a class="done"
						href="<c:url value="/doneEstam?id=${solicitud.id}"/>">Si</a></td>
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
