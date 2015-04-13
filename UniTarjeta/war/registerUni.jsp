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
								<input class="textoLetra" type="text" name="banco" value="Banco asociado" onBlur="if(this.value == '') this.value = 'Banco asociado'" onFocus="if(this.value == 'Banco asociado') this.value = ''" required>
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