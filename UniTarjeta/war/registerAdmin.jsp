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
		
		function contrase�a(){
			  var valor = $("#contrase�a").val();
			  var valor2 = $("#rcontrase�a").val();
			  if(valor != valor2){
				  document.getElementById("rcontrase�a").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				  document.getElementById("rcontrase�a").style.outline="0 none";
				  document.getElementById("contrase�a").style.boxShadow="0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6)";
				  document.getElementById("contrase�a").style.outline="0 none";
				  $('#passE').each (function(){$('#passE').html("");});
				  return true;
				  }
			  else{
				  document.getElementById("rcontrase�a").style.boxShadow="";
				  document.getElementById("rcontrase�a").style.outline="";
				  document.getElementById("contrase�a").style.boxShadow="";
				  document.getElementById("contrase�a").style.outline="";
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
				$('#nickE').html("El nick debe de ser de m�s de 2 caracteres y menos de 14.");
			 	
			}
			else if (dni()){
				 $("#enviar").attr("disabled",true);
			     $("#dniE").html("Dni debe ser con la letra may�sula. Ej:8349739D.");
				
			}
			
			else if (email()){
				$("#enviar").attr("disabled",true);
				$("#correoE").html("El email no es una dirrecci�n de correo v�lida.");
			}
			else if (contrase�a()){
				$("#enviar").attr("disabled",true);
			  	$("#passE").html("No coinciden las contrase�as.");
			}
			else{
			 $("#enviar").removeAttr("disabled");
			}
		}
		
		$("#nick").keyup(nick);
		$("#nick").keyup(validar);
		$("#email").keyup(email);
		$("#email").keyup(validar);
		$("#rcontrase�a").keyup(contrase�a);
		$("#rcontrase�a").keyup(validar);
		$("#enviar").on('click',validar);
		
		
		
 });	

 
	
</script>
</head>
<body>
	<div style="float: right;" class="headline"><a href="admin.jsp">Atr�s</a><a href="/cerrarSesion">Cerrar sesi�n</a></div>
	<div style="clear: both;" />
	<div class="exteriorReg">
		<div id="contenidoRegistro">

				<form align="center" action="/newAdmin" method="post" accept-charset="utf-8" >
							
							<p align="center">
								<label for="nick" id="nick" class="labelLetra" id="nick">Nick</label>
								<input class="textoLetra" type="text" name="nick" value="Nombre de usuario" onBlur="if(this.value == '') this.value = 'Nombre de usuario'" onFocus="if(this.value == 'Nombre de usuario') this.value = ''" required>
							</p>
							
							
							<p align="center">
								<label id="email"for="email" class="labelLetra">Email</label>
								<input class="textoLetra"  type="text" name="email" value="Email" onBlur="if(this.value == '') this.value = 'Email'" onFocus="if(this.value == 'Email') this.value = ''" required>
							</p>

							<p align="center">
								<label id="contrase�a" for="contrase�a" class="labelLetra">Contrase�a</label>
								<input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>
							<p align="center">
								<label id="rcontrase�a" for="Rcontrase�a" class="labelLetra">Repita contrase�a</label>
								<input type="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>
							
							<p class="sesion">
								<input type="submit"
									value="Create" />
							</p>
						

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