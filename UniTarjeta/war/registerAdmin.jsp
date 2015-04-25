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
				$('#correoE').each (function(){
					$('#correoE').html("");
			});
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
		 
		 $('#uniE').each (function(){
				$('#uniE').html("");
		});
		 $('#passE').each (function(){
				$('#passE').html("");
		});
		}
	

		$("#nick").blur(nick);		
		$("#dni").blur(dni);
		$("#email").blur(email);
		$("#rcontraseña").blur(contraseña);
 });	
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
		$('#correoE').each (function(){
			$('#correoE').html("");
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
		  return true;
		  }
	  else{
		  document.getElementById("rcontraseña").style.boxShadow="";
		  document.getElementById("rcontraseña").style.outline="";
		  $('#passE').each (function(){
				$('#passE').html("");
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
function borrar(){
	 $('#nickE').each (function(){
			$('#nickE').html("");
	});
	 $('#correoE').each (function(){
			$('#correoE').html("");
	});
	 $('#uniE').each (function(){
			$('#uniE').html("");
	});
	 $('#passE').each (function(){
			$('#passE').html("");
	});
	}

 
function validar(){
	 if(!this.contraseña() && !this.email() ){return true;}
	 borrar();
	 if (this.nick()){
	 document.getElementById("nickE").innerHTML += "El nick debe de ser de más de 2 caracteres y menos de 14.";
	 }
	 if (this.email()){
	 document.getElementById("correoE").innerHTML += "El email no es una dirrección de correo válida.";
	}
	 if (this.contraseña()){
	 document.getElementById("passE").innerHTML += "No coinciden las contraseñas.";
	 }
	 
	 return false;
}	
		 </script>
</head>
<body>
	<div style="float: right;" class="headline"><a href="admin.jsp">Atrás</a><a href="/cerrarSesion">Cerrar sesión</a></div>
	<div style="clear: both;" />
	<div class="exteriorReg">
		<div id="contenidoRegistro">

				<form align="center" action="/newAdmin" method="post" accept-charset="utf-8" onSubmit="return validar()">
							
							<p align="center">
								<label for="nick" id="nick" class="labelLetra" id="nick">Nick</label>
								<input class="textoLetra" type="text" name="nick" value="Nombre de usuario" onBlur="if(this.value == '') this.value = 'Nombre de usuario'" onFocus="if(this.value == 'Nombre de usuario') this.value = ''" required>
							</p>
							
							
							<p align="center">
								<label id="email"for="email" class="labelLetra">Email</label>
								<input class="textoLetra"  type="text" name="email" value="Email" onBlur="if(this.value == '') this.value = 'Email'" onFocus="if(this.value == 'Email') this.value = ''" required>
							</p>

							<p align="center">
								<label id="contraseña" for="contraseña" class="labelLetra">Contraseña</label>
								<input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>
							<p align="center">
								<label id="rcontraseña" for="Rcontraseña" class="labelLetra">Repita contraseña</label>
								<input type="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required>
							</p>
							
							<p class="sesion">
								<input type="submit"
									value="Create" />
							</p>
						

				</form>
		</div>
	</div>
</body>
</html>