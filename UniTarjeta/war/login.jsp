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
		<span><img class="logo" src="/img/logo_unitarjeta.png"></span>
		<div id="contenido">

			<form action="/login" method="get" accept-charset="utf-8">				
						<p>
							<span class="username"><img src="user.png"></span>
							<input type="text" name="nick" value="Username" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required>
						</p>
						<p>
							<span class="password"><img src="lock.png"></span>
							<input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
						</p>
						<div class="olvida">
						<a href="rememberemail.jsp"> �Has olvidado tu contrase�a?</a>
						</div>
						
						<p class="sesion">
							<input type="submit" value="Login" />
						</p>
					


			</form>

			<p>�Quieres una tarjeta universitaria?<a href="/welcome">Registrate</a><span class="registro"></span></p>
			
		</div>
	</div>
	
	<div class="contacta">
		<p> Si eres una universidad y quieres este servicio, ponte en contacto con nosotros enviandonos un correo a unitarjetainfo@gmail.com o llama al 790 901 910.</p>
	</div>
	
</body>
</html>