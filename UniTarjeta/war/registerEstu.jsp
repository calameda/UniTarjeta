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
				return true;
			}
			else if ($("#nick").val().length > 14){		
				document.getElementById("nick").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nick").style.outline="0 none";
				return true;
			}
			else{
				document.getElementById("nick").style.boxShadow="";
				document.getElementById("nick").style.outline="";
				$('#nickE').each (function(){
					$('#nickE').html("");
			});
				return false;
	          }
			

		}
		
		function uni(){
			
			if ($("#uni").val() == 0){		
				document.getElementById("uni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("uni").style.outline="0 none";
				return true;
			}
			else{
				document.getElementById("uni").style.boxShadow="";
				document.getElementById("uni").style.outline="";
				$('#uniE').each (function(){
					$('#uniE').html("");
			});
				return false;
	          }
			

		}
		
		function dni(){
		  var valor = $("#dni").val();
          var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
          	if((/^\d{8}/).test(valor)&& !(/[A-Z]$/).test(valor)){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				return true;
			}
			else if( !((/^\d{8}[A-Z]$/).test(valor)) ){
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				return true;
			}
            else if(valor.charAt(8) != letras[(valor.substring(0, 8))%23]) {
				document.getElementById("dni").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("dni").style.outline="0 none";
				return true;

			}
            else{
				document.getElementById("dni").style.boxShadow="";
				document.getElementById("dni").style.outline="";
				$('#dniE').each (function(){
					$('#dniE').html("");
			});
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
				  return true;
				  }
			  else{
				  document.getElementById("rcontraseña").style.boxShadow="";
				  document.getElementById("rcontraseña").style.outline="";
				  document.getElementById("contraseña").style.boxShadow="";
				  document.getElementById("contraseña").style.outline="";
				  $('#passE').each (function(){
						$('#passE').html("");
				});
				  return false;
			  }
		}

		function email(){			
			var valor = $("#email").val();			
			if(!((/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/).test(valor))){
				document.getElementById("email").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("email").style.outline="0 none";
				return true;
			}
            else{
				document.getElementById("email").style.boxShadow="";
				document.getElementById("email").style.outline="";
				return false;
            }
		}
		
		function borrar(){
		 $('#nickE').each (function(){
				$('#nickE').html("");
		});
		 $('#correoE').each (function(){
				$('#correoE').html("");
		});
		 $('#dniE').each (function(){
				$('#dniE').html("");
		});
		 $('#uniE').each (function(){
				$('#uniE').html("");
		});
		 $('#passE').each (function(){
				$('#passE').html("");
		});
		}
	
		function validar(){
			
			
			if (nick()){
				$("#enviar").attr("disabled",true);
				$('#nickE').html("El nick debe de ser de más de 2 caracteres y menos de 14.");
			 	
			}
			else if (dni()){
				 $("#enviar").attr("disabled",true);
			     $("#dniE").html("Dni debe ser con la letra mayúsula. Ej:8349739D.");
				
			}
			
			else if (email()){
				$("#enviar").attr("disabled",true);
				$("#correoE").html("El email no es una dirrección de correo válida.");
				
			}
			else if (contraseña()){
				$("#enviar").attr("disabled",true);
			  	$("#passE").html("No coinciden las contraseñas.");
			  	
			}
			else{
			 $("#enviar").removeAttr("disabled");
			}
		}
		
		$("#nick").blur(nick);
		$("#nick").blur(validar);
		$("#dni").blur(dni);
		$("#dni").blur(validar);
		$("#email").blur(email);
		$("#email").blur(validar);
		$("#rcontraseña").blur(contraseña);
		$("#rcontraseña").blur(validar);
		
		
		
 });	

 
	
		 </script>
</head>
<body>
	</ul>
	<c:if test="${x == 0}">
		<div style="float: right;" class="headline">
			<a href="admin.jsp">Atrás</a><a href="/cerrarSesion">Cerrar
				sesión</a>
		</div>
	</c:if>
	<c:if test="${x == 1}">
		<div style="float: right;" class="headline">
			<a href="login.jsp">Atrás</a>
		</div>
	</c:if>
	<div style="clear: both;" />


	<div class="exteriorReg">
		<div id="contenidoRegistro">


			<form action="/newEstu" method="post" accept-charset="utf-8">

				<table align="center">


					<c:if test="${error == 1}">
						<label for="ERROR" class="labelLetra">Nick o dni ya en
							uso.</label>
					</c:if>

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
					<p id="nickE"></p>
					<p id="correoE"></p>
					<p id="dniE"></p>
					<p id="uniE"></p>
					<p id="passE"></p>
				</table>

			</form>
		</div>
	</div>
</body>
</html>