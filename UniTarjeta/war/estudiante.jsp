<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>


<html>
<head>
<title>Estudiante</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<meta charset="utf-8">
</head>
<body>
<nav style="float: right;" class="headline"><a href="/cerrarSesion">Cerrar sesión</a></nav>
<div style="clear: both;" />

	<div class="tarjeta">
				         <img id="usuario" src="user.png" width="80px" height="80px" />
				         <img id ="chip" src="img/${chip}.png" height="50px" width="50px"/>
				         <img id ="uni" src="img/${uni}.png"  height="150px" width="130px"/>
				         <img id ="banco" src="img/${banco}.png" height="80px" width="130px"/>
	</div>​
	<p> Tiene una solicitud hecha, espera a que se tramite. Su estado es: </p>

	<c:if test="${estado == 0}">
		<p>La solicitud está siendo tramitada por la universidad. </p>
	</c:if>
	
	<c:if test="${estado == 1}">
		<p>La solicitud ha sido tramitada por la universidad y está siendo tramitada por el banco.</p>
	</c:if>

	<c:if test="${estado == 2}">
		<p>La solicitud ha sido tramitada por el banco y está siendo tramitada por la estampadora. </p>
	</c:if>

	<c:if test="${estado == 3}">
		<p> Su tarjeta está lista. <p/>
		<a href="/removeSolicitud?id=${id}"">Pulsa cuando obtenga la tarjeta en mano</a>
	</c:if>
	
	<c:if test="${estado == 4}">
		<p>La solicitud no ha sido tramitada por la universidad, ha habido algún problema, contacta con nosotros a través de unitarjetainfo@gmail.com e intentaremos solucionarlo. Disculpe las molestias. </p>
	</c:if>
	



	<hr />


</body>
</html>
