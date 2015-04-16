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
<script type="text/javascript" src="http://zeptojs.com/zepto.min.js"> </script>
<script type="text/javascript">
$(function(){
		
		function numero(){
			if($("#nombre").val().length < 2){
				document.getElementById("nombre").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nombre").style.outline="0 none";
			}
			else if ($("#nombre").val().length > 14){		
				document.getElementById("nombre").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nombre").style.outline="0 none";
			}
			else{
				document.getElementById("nombre").style.boxShadow="";
				document.getElementById("nombre").style.outline="";
	          }

		}
		
		function dni(){
		  var valor = $("#dni").val();
          var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
          	if((/^\d{8}/).test(valor)&& !(/[A-Z]$/).test(valor)){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
			}
			else if( !((/^\d{8}[A-Z]$/).test(valor)) ){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
			}
            else if(valor.charAt(8) != letras[(valor.substring(0, 8))%23]) {
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";

			}
            else{
				document.getElementById("dni").style.boxShadow="";
				document.getElementById("dni").style.outline="";
            }
			
		}

		function email(){			
			var valor = $("#email").val();			
			if(!((/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/).test(valor))){
				document.getElementById("email").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("email").style.outline="0 none";	
			}
            else{
				document.getElementById("email").style.boxShadow="";
				document.getElementById("email").style.outline="";
            }
		}
		function contraseña(){
			  var valor = $("#contraseña").val();
			  var valor2 = $("#rcontraseña").val();
			  if(valor != valor2){
				  document.getElementById("rcontraseña").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				  document.getElementById("rcontraseña").style.outline="0 none";
				  }
			  else{
				  document.getElementById("rcontraseña").style.boxShadow="";
				  document.getElementById("rcontraseña").style.outline="";
			  }
			  }
			  
	

		$("#nombre").blur(numero);		
		$("#dni").blur(dni);
		$("#email").blur(email);
		$("#rcontraseña").blur(contraseña);
 });	
		 </script>
</head>
<body>
	<!--	<ul class="menuVert1">
<li><a href="#">INICIO</a></li>
<li> <a href="libros.html">CONTÁCTANOS</a> </li>
<li> <a href="cursos.html">INFORMACIÓN</a> </li>
<li> <a href="humor.html">EQUIPO</a> </li> -->
	</ul>
	<div class="exteriorReg">
		<div id="contenidoRegistro">

			<form action="/newEstu" method="post" accept-charset="utf-8">

				<table align="center">


					<tr>


						<td><label for="nick" class="labelLetra">Nick</label> <input
							class="textoLetra" type="text" name="nick"
							value="Nombre de usuario"
							onBlur="if(this.value == '') this.value = 'Nombre de usuario'"
							onFocus="if(this.value == 'Nombre de usuario') this.value = ''"
							required></td>
						<td>
							<table>
								<tr>
									<td><label for="nombre" class="labelNombre">Nombre</label>
										<input class="textoNombre" type="text" name="name" id="nombre"
										value="Nombre" size="5"
										onBlur="if(this.value == '') this.value = 'Nombre'"
										onFocus="if(this.value == 'Nombre') this.value = ''" required>
									</td>
									<td><label for="apellido" class="labelNombre">Apellidos</label>
										<input class="textoNombre" type="text" name="apellido"
										value="Apellidos" size="5"
										onBlur="if(this.value == '') this.value = 'Apellidos'"
										onFocus="if(this.value == 'Apellidos') this.value = ''"
										required></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td><label for="dni" class="labelLetra">DNI</label> <input
							class="textoLetra" type="text" name="dni" id="dni" value="DNI"
							onBlur="if(this.value == '') this.value = 'DNI'"
							onFocus="if(this.value == 'DNI') this.value = ''" required>

						</td>

						<td><label for="email" class="labelLetra">Email</label> <input
							class="textoLetra" type="text" name="email" id="email"
							value="Email" onBlur="if(this.value == '') this.value = 'Email'"
							onFocus="if(this.value == 'Email') this.value = ''" required>

						</td>
					</tr>

					<tr>
						<td><label for="calle" class="labelLetra">Calle</label> <input
							class="textoLetra" type="text" name="calle" value="Calle"
							onBlur="if(this.value == '') this.value = 'Calle'"
							onFocus="if(this.value == 'Calle') this.value = ''" required>
						</td>
						<td>
							<table>
								<tr>
									<td><label for="numero" class="labelNumero">Numero</label>
										<input class="textoNumero" type="text" name="numero"
										value="Numero" size="5"
										onBlur="if(this.value == '') this.value = 'Numero"
										onFocus="if(this.value == 'Numero') this.value = ''" required>
									</td>
									<td><label for="piso" class="labelNumero">Piso</label> <input
										class="textoNumero" type="text" name="piso" value="Piso"
										size="5" onBlur="if(this.value == '') this.value = 'Piso'"
										onFocus="if(this.value == 'Piso') this.value = ''" required>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>

						
						<td><label for="universidad" class="labelLetra">Universidad</label><select name="universidad" class="textoLetra" name="universidad" id="nombre">
								<option selected value="0">Elige una Universidad</option>
								<c:forEach items="${universidades}" var="uni">
									<option value="${uni.nick}"><c:out value="${uni.nombre}"/></option>
								</c:forEach>
						</select></td>
						<td><label for="banco" class="labelLetra">¿Quieres
								cuenta banco?</label> <input class="textoLetra" type="text" name="banco"
							id="nombre" value="Si"
							onBlur="if(this.value == '') this.value = 'Si'"
							onFocus="if(this.value == 'Si') this.value = ''" required>
						</td>

					</tr>
					<tr>


						<td><label for="contraseña" class="labelLetra">Contraseña</label>
							<input class="textoLetra" type="password" name="password"
							id="contraseña" value="Password"
							onBlur="if(this.value == '') this.value = 'Password'"
							onFocus="if(this.value == 'Password') this.value = ''" required>

						</td>
						<td><label for="Rcontraseña" class="labelLetra">Repita
								contraseña</label> <input class="textoLetra" type="password"
							id="rcontraseña" value="Password"
							onBlur="if(this.value == '') this.value = 'Password'"
							onFocus="if(this.value == 'Password') this.value = ''" required>
						</td>
					</tr>

					<tr>
					
						<td colspan="2" align="center" class="sesion"><input
							type="submit" value="Create" /></td>
					</tr>
				</table>

			</form>
		</div>
	</div>
</body>
</html>