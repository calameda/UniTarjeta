<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Registro</title>
</head>
<body>
	<div style="float: right;" class="headline"><a href="admin.jsp">Atrás</a><a href="/cerrarSesion">Cerrar sesión</a></div>
	<div style="clear: both;" />
	<div class="exteriorReg">
		
		<div id="contenidoRegistro">

				<form action="/newUni" method="post" accept-charset="utf-8">
					<table align="center">
						
							<tr>
								<td>
								<label for="nick" class="labelLetra">Nick</label>
								<input class="textoLetra" type="text" name="nick" value="Nombre de usuario" onBlur="if(this.value == '') this.value = 'Nombre de usuario'" onFocus="if(this.value == 'Nombre de usuario') this.value = ''" required>
								</td>
								<td>
								<label for="nombre" class="labelLetra">Nombre</label>
								<input class="textoLetra" type="text" name="nombre" value="Nombre" onBlur="if(this.value == '') this.value = 'Nombre'" onFocus="if(this.value == 'Nombre') this.value = ''" required>
								</td>
							</tr>
							<tr>
							<td>
								<label for="email" class="labelLetra">Email</label>
								<input class="textoLetra" type="text" name="email" value="Email" onBlur="if(this.value == '') this.value = 'Email'" onFocus="if(this.value == 'Email') this.value = ''" required>
							</td>
							<td >
								<label for="Banco asociado" class="labelLetra">Banco asociado</label>
								<select class="textoLetra" type="text" name="banco" value="Banco asociado">
								<option selected value="0">Elige el banco</option>
								<c:forEach items="${bancos}" var="banco">
									<option value="${banco.nick}"><c:out value="${banco.nombre}"/></option>
								</c:forEach>
							</td>
							</tr>
							<tr>
								
							<td>
								<label for="calle" class="labelLetra">Calle</label>
								<input class="textoLetra" type="text"  name="calle" value="Calle" onBlur="if(this.value == '') this.value = 'Calle'" onFocus="if(this.value == 'Calle') this.value = ''" required>
							</td>
								
							<td>
								<label for="numero" class="labelNumero">Numero</label>
								<input class="textoNumero" type="text" name="numero" value="Numero" size="5" onBlur="if(this.value == '') this.value = 'Numero" onFocus="if(this.value == 'Numero') this.value = ''" required>
							</td>
						
							
							
						</tr>
						<tr>
							<td>
								<label for="contraseña" class="labelLetra">Contraseña</label>
								<input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</td>

							<td>
								<label for="Rcontraseña" class="labelLetra">Repita contraseña</label>
								<input type="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</td>
							
							
						</tr>
						<tr>

							
							
							<td colspan="2" align="center" class="sesion">
								<input type="submit"
									value="Create" />
							</td>
						</tr>
						

				</form>
		</div>
	</div>
</body>
</html>