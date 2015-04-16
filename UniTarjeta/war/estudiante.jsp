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

	<p> Tiene una solicitud hecha, espera a que se tramite. Su estado es: </p>

	<c:if test="${estado == 0}">
		<p>La solicitud está siendo transmitada por la universidad </p>
	</c:if>
	
	<c:if test="${estado == 1}">
		<p>La solicitud ha sido transmitada por la universidad y está siendo tramitada por el banco</p>
	</c:if>
	
	<c:if test="${estado == 1}">
		<p>La solicitud ha sido transmitada por la universidad</p>
	</c:if>

	<c:if test="${estado == 2}">
		<p>La solicitud ha sido transmitada por el banco y está siendo tramitada por la estampadora </p>
	</c:if>

	<c:if test="${estado == 3}">
		<p> Su tarjeta está lista. <p/>
	</c:if>




	<hr />


</body>
</html>
