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
		
		
		function nick(){
			if($("#nick").val().length < 2){
				document.getElementById("nick").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nick").style.outline="0 none";
				$('#nickE').each (function(){$('#nickE').html("");});
				$('#nickE').html("El nick debe de ser de más de 2 caracteres y menos de 14.");
				return true;
			}
			else if ($("#nick").val().length > 14){		
				document.getElementById("nick").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nick").style.outline="0 none";
				$('#nickE').each (function(){$('#nickE').html("");});
				$('#nickE').html("El nick debe de ser de más de 2 caracteres y menos de 14.");
				return true;
			}
			else{
				document.getElementById("nick").style.boxShadow="";
				document.getElementById("nick").style.outline="";
				$('#nickE').each (function(){$('#nickE').html("");});
				return false;
	          }
			

		}
		
		function uni(){
			
			if ($("#uni").val() == 0){		
				document.getElementById("uni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("uni").style.outline="0 none";
				$('#dniE').each (function(){$('#dniE').html("");});
				return true;
			}
			else{
				document.getElementById("uni").style.boxShadow="";
				document.getElementById("uni").style.outline="";
				$('#uniE').each (function(){$('#uniE').html("");});
				$('#dniE').each (function(){$('#dniE').html("");});
				return false;
	          }
		}
		
		function dni(){
		  var valor = $("#dni").val();
          var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
          	if((/^\d{8}/).test(valor)&& !(/[A-Z]$/).test(valor)){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				$('#dniE').each (function(){$('#dniE').html("");});
				$("#dniE").html("La letra del DNI es incorrecta. Recuerde que debe estar en mayúscula.");
				return true;
			}
			else if( !((/^\d{8}[A-Z]$/).test(valor)) ){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				$('#dniE').each (function(){$('#dniE').html("");});
				$("#dniE").html("El valor del DNI es incorrecto.");
				return true;
			}
            else if(valor.charAt(8) != letras[(valor.substring(0, 8))%23]) {
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				$('#dniE').each (function(){$('#dniE').html("");});
				$("#dniE").html("El DNI es incorrecto.");
				return true;

			}
            else{
				document.getElementById("dni").style.boxShadow="";
				document.getElementById("dni").style.outline="";
				$('#dniE').each (function(){$('#dniE').html("");});
				return false;
            }
			
		}
		
		
		function contraseña(){
			  var valor = $("#contraseña").val();
			  var valor2 = $("#rcontraseña").val();
			  if(valor != valor2){
				  document.getElementById("rcontraseña").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				  document.getElementById("rcontraseña").style.outline="0 none";
				  document.getElementById("contraseña").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				  document.getElementById("contraseña").style.outline="0 none";
				  $('#passE').each (function(){$('#passE').html("");});
				  return true;
				  }
			  else{
				  document.getElementById("rcontraseña").style.boxShadow="";
				  document.getElementById("rcontraseña").style.outline="";
				  document.getElementById("contraseña").style.boxShadow="";
				  document.getElementById("contraseña").style.outline="";
				  $('#passE').each (function(){$('#passE').html("");});
				  return false;
			  }
		}

		function email(){			
			var valor = $("#email").val();			
			if(!((/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/).test(valor))){
				document.getElementById("email").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("email").style.outline="0 none";
				$('#correoE').each (function(){$('#correoE').html("");});
				$("#correoE").html("El email no es una dirección de correo válida.");
				return true;
			}
            else{
				document.getElementById("email").style.boxShadow="";
				document.getElementById("email").style.outline="";
				$('#correoE').each (function(){$('#correoE').html("");});
				return false;
            }
		}
		

		function validar(){
			
			
			if (nick()){
				$("#enviar").attr("disabled",true);
				$('#nickE').html("El nick debe de ser de más de 2 caracteres y menos de 14.");
			 	
			}
			else if (dni()){
				 $("#enviar").attr("disabled",true);
			     $("#dniE").html("El DNI es incorrecto. Ej:8349739D.");
				
			}
			
			else if (email()){
				$("#enviar").attr("disabled",true);
				$("#correoE").html("El email no es una dirección de correo válida.");
			}
			else if (contraseña()){
				$("#enviar").attr("disabled",true);
			  	$("#passE").html("No coinciden las contraseñas.");
			}
			else{
			 $("#enviar").removeAttr("disabled");
			}
		}
		
		$("#nick").keyup(nick);
		//$("#nick").keyup(validar);
		$("#dni").keyup(dni);
		//$("#dni").keyup(validar);
		$("#email").keyup(email);
		//$("#email").keyup(validar);
		$("#rcontraseña").keyup(contraseña);
		//$("#rcontraseña").keyup(validar);
		$("#enviar").on('click',validar);
		
		
		
 });	

 
	
		 </script>
</head>
<body>
	</ul>
	<c:if test="${x == 0}">
		<div style="float: right;" class="headline">
			<a href="admin.jsp"><button type="button" class="btn">Atrás</button></a>
			<a href="/cerrarSesion"><button type="button" class="btn">Cerrar sesión</button></a>
		</div>
	</c:if>
	<c:if test="${x == 1}">
		<div style="float: right;" class="headline">
			<a href="login.jsp">
				<button type="button" class="btn">Atrás</button>
			</a>
		</div>
	</c:if>
	<div style="clear: both;" />


	<div class="exteriorReg">
	
		<div id="contenidoRegistro">


			<form action="/newEstu" method="post" accept-charset="utf-8">

				<table align="center">


					

					<tr>



						<td><label for="apellido" id="apellido"  class="labelLetra">Apellidos</label> <input
							class="textoLetra" type="text" name="apellido"
							value="Apellidos"
							onBlur="if(this.value == '') this.value = 'Apellidos'"
							onFocus="if(this.value == 'Apellidos') this.value = ''"
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
									<td><label for="nick" class="labelNombre">Nick</label>
										<input class="textoNombre" type="text" name="nick" id="nick"
										value="Nick" size="5"
										onBlur="if(this.value == '') this.value = 'Nick'"
										onFocus="if(this.value == 'Nick') this.value = ''"
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


						<td><label for="universidad" class="labelLetra">Universidad</label><select
							name="universidad" class="textoLetra" name="universidad"
							id="uni">
								<option selected value="0">Elige una Universidad</option>
								<c:forEach items="${universidades}" var="uni">
									<option value="${uni.nick}"><c:out
											value="${uni.nombre}" /></option>
								</c:forEach>
						</select></td>
						<td><label for="banco" class="labelLetra">¿Quieres
								cuenta banco?</label> <select class="textoLetra" type="text"
							name="banco" id="nombre">
								<option selected value="Si">Si</option>
								<option value="No">No</option>

						</select></td>

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
							type="submit" value="Create" id="enviar" /></td>
					</tr>
					
				</table>
			</form>
		</div>
		
		<div class="contacta">
			<p><c:if test="${error == 1}">
						<p for="ERROR">Nick ya en
							uso.</p>
					</c:if>
					<c:if test="${error == 2}">
						<p for="ERROR">Dni ya en
							uso.</p>
					</c:if>
					<c:if test="${error == 3}">
						<p for="ERROR">Nick y dni ya en
							uso.</p>
					</c:if>
					<p id="error"></p>
					<p id="nickE"></p>
					<p id="correoE"></p>
					<p id="dniE"></p>
					<p id="uniE"></p>
					<p id="passE"></p></p>
		</div>
		
	</div>
</body>
</html>