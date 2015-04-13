<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Registro</title>
<script type="text/javascript" src="http://zeptojs.com/zepto.min.js"> </script>
<script type="text/javascript">
$(function(){
		
		function numero(){
		$("#mensaje1").html("");
		if($("#nombre").val().length < 2){
		$("#mensaje1").html("Rellene este campo");
		}
		if ($("#nombre").val().length > 14){		
		$("#mensaje1").html("Introduce tu nombre correctamente, este tiene más de 14 caracteres");
		}
		}
		function dni(){			
		  var valor = $("#dni").val();
          var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
		  $("#mensaje2").html("");
			if((/^\d{8}/).test(valor)&& !(/[A-Z]$/).test(valor)){
				$("#mensaje2").html("Le falta la letra del DNI (debe ir en mayúsculas)"); 
			}
			else if( !((/^\d{8}[A-Z]$/).test(valor)) ){
				$("#mensaje2").html("DNI incorrecto"); 
			}
            else if(valor.charAt(8) != letras[(valor.substring(0, 8))%23]) {
				$("#mensaje2").html("La letra del DNI no se corresponde con el número (la letra debe ir en mayúscula)");
			}
			
		}

		function email(){			
			var valor = $("#email").val();			
			$("#mensaje3").html("");
			if(!((/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/).test(valor)))
				$("#mensaje3").html("Correo electrónico no válido");
		
		}
	

		$("#nombre").blur(numero);		
		$("#dni").blur(dni);
		$("#email").blur(email);
 });	
		 </script>
</head>
<body>
	<div class="exteriorReg">
		<div id="contenidoRegistro">

				<form action="/newEstu" method="post" accept-charset="utf-8">

					<table align="center">


						<tr>
						
							
							<td>
								<label for="nick" class="labelLetra">Nick</label>
								<input class="textoLetra" type="text" name="nick" value="Nombre de usuario" onBlur="if(this.value == '') this.value = 'Nombre de usuario'" onFocus="if(this.value == 'Nombre de usuario') this.value = ''" required>
							</td>
							<td>
								<table>
									<tr>
										<td>
											<label for="nombre" class="labelNombre">Nombre</label>
											<input class="textoNombre" type="text" name="name" value="Nombre" size="5" onBlur="if(this.value == '') this.value = 'Nombre'" onFocus="if(this.value == 'Nombre') this.value = ''" required>
										</td>
										<td>
											<label for="apellido" class="labelNombre">Apellido</label>
											<input class="textoNombre" type="text" name="apellido" value="Apellidos" size="5" onBlur="if(this.value == '') this.value = 'Apellidos'" onFocus="if(this.value == 'Apellidos') this.value = ''" required>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<label for="dni" class="labelLetra">DNI</label>
								<input class="textoLetra" type="text" name="dni" id="dni" value="DNI" onBlur="if(this.value == '') this.value = 'DNI'" onFocus="if(this.value == 'DNI') this.value = ''" required>
								<div id="mensaje2" class="errores"> </div>  
							</td>
							
							<td>
								<label for="email" class="labelLetra">Email</label>
								<input class="textoLetra" type="text" name="email" id="email" value="Email" onBlur="if(this.value == '') this.value = 'Email'" onFocus="if(this.value == 'Email') this.value = ''" required>
								<div id="mensaje3" class="errores"> </div>  
							</td>
							</tr>
							
							<tr>
							<td>
								<label for="calle" class="labelLetra">Calle</label>
								<input class="textoLetra" type="text"  name="calle" value="Calle" onBlur="if(this.value == '') this.value = 'Calle'" onFocus="if(this.value == 'Calle') this.value = ''" required> 
							</td>
							<td>
								<table>
									<tr>
										<td>
											<label for="numero" class="labelNumero">Numero</label>
											<input class="textoNumero" type="text" name="numero" value="Numero" size="5" onBlur="if(this.value == '') this.value = 'Numero" onFocus="if(this.value == 'Numero') this.value = ''" required>
										</td>
										<td>
											<label for="piso" class="labelNumero">Piso</label>
											<input class="textoNumero" type="text" name="piso" value="Piso" size="5" onBlur="if(this.value == '') this.value = 'Piso'" onFocus="if(this.value == 'Piso') this.value = ''" required>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							
							
							<td>
								<label for="universidad" class="labelLetra">Universidad</label>
								<input class="textoLetra" type="text" name="universidad" id="nombre" value="Universidad" onBlur="if(this.value == '') this.value = 'Universidad'" onFocus="if(this.value == 'Universidad') this.value = ''" required>
							</td>
							<td>
								<label for="banco" class="labelLetra">¿Quieres cuenta banco?</label>
								<input class="textoLetra" type="text"  name="banco" id="nombre" value="Si" onBlur="if(this.value == '') this.value = 'Si'" onFocus="if(this.value == 'Si') this.value = ''" required> 
							</td>
							
						</tr>
						<tr>
						
							
							<td>
								<label for="contraseña" class="labelLetra">Contraseña</label>
								<input class="textoLetra" type="password" name="password" id="nombre" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
  
							</td>
							<td>
								<label for="Rcontraseña" class="labelLetra">Repita contraseña</label>
								<input class="textoLetra" type="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required> 
							</td>
						</tr>

						<tr>
							<td colspan="2" align="center" class="sesion">
								<input type="submit"
									value="Create" />
							</td>
						</tr>
					</table>

				</form>
		</div>
	</div>
</body>
</html>