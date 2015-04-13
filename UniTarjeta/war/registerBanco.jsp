<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Registro</title>
</head>
<body>
	<div class="exteriorReg">
		<div id="contenidoRegistro">

				<form align="center" action="/newBanco" method="post" accept-charset="utf-8">
						
							<p align="center">
								<label for="nick" class="labelLetra">Nick</label>
								<input class="textoLetra"  type="text" name="nick" value="Nombre de usuario" onBlur="if(this.value == '') this.value = 'Nombre de usuario'" onFocus="if(this.value == 'Nombre de usuario') this.value = ''" required>
							</p>
							<p align="center">
								<label for="nombre" class="labelLetra">Nombre</label>
								<input class="textoLetra"  type="text" name="nombre" value="Nombre" onBlur="if(this.value == '') this.value = 'Nombre'" onFocus="if(this.value == 'Nombre') this.value = ''" required>
							</p>
							
							<p align="center">
								<label for="email" class="labelLetra">Email</label>
								<input class="textoLetra"  type="text" name="email" value="Email" onBlur="if(this.value == '') this.value = 'Email'" onFocus="if(this.value == 'Email') this.value = ''" required>
							</p>
							
							<p align="center">
								<label for="contraseña" class="labelLetra">Contraseña</label>
								<input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>

							<p align="center">
								<label for="Rcontraseña" class="labelLetra">Repita contraseña</label>
								<input type="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>

							<p align="center">
								<label for="estampadora" class="labelLetra">Estampadora</label>
								<input class="textoLetra" type="text" name="estampadora" value="Estampadora" onBlur="if(this.value == '') this.value = 'Estampadora'" onFocus="if(this.value == 'Estampadora') this.value = ''" required>
							</p>
							
							
							<p align="center" class="sesion">
								<input type="submit"
									value="Create" />
							</p>
						

				</form>
		</div>
	</div>
</body>
</html>