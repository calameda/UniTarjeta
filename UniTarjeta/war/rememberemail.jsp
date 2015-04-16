<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session='true'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Login</title>
</head>
<body>
	
	<div class="exterior">
		<div id="contenido">

			<form action="/remember" method="get" accept-charset="utf-8">
						<p>¿Necesitas la contraseña? Escribe tu correo o tu nick y te enviaremos tu nick y contraseña.
						<p>
							<span class="username"><img src="user.png"></span>
							<input type="text" name="nick" value="Username" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required>
						</p>
						
						<p class="sesion">
							<input type="submit" value="pedir" />
						</p>
					


			</form>

		</div>
	</div>
	<div id="contacta">
		<p> Si eres una universidad y quieres este servicio, ponte en contacto con nosotros enviandonos un correo a unitarjeta@gmail.com o llama al 790 901 910.</p>
	</div>
	
</body>
</html>