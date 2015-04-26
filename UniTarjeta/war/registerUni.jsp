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
				return true;
			}
			else if ($("#nick").val().length > 14){		
				document.getElementById("nick").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				document.getElementById("nick").style.outline="0 none";
				$('#nickE').each (function(){$('#nickE').html("");});
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
		
		$("#nick").keyup(nick);
		$("#nick").keyup(validar);
		$("#email").keyup(email);
		$("#email").keyup(validar);
		$("#rcontraseña").keyup(contraseña);
		$("#rcontraseña").keyup(validar);
		$("#enviar").on('click',validar);
		
		
		
 });	

 
	
</script>
</head>
<body>
	<div style="float: right;" class="headline">
		<a href="admin.jsp"><button type="button" class="btn">Atrás</button></a>
		<a href="/cerrarSesion"><button type="button" class="btn">Cerrar sesión</button></a>
	</div>
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
						</table>

				</form>
		</div>
					<p class="contacta" id="nickE"></p>
					<p class="contacta" id="correoE"></p>
					<p class="contacta" id="dniE"></p>
					<p class="contacta" id="uniE"></p>
					<p class="contacta" id="passE"></p>
	</div>
</body>
</html>