<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado de consulta login</title>
</head>
<body>
<%@ page import = "com.BO.TiendaVirtualSB.*" %>

	<h1>Resultado de consulta Login de Usuario</h1>
	<p><b>Usuario:</b>
		<% String usuario = request.getParameter("usuario"); 
		out.println(usuario);%>
	</p>
	<p>
	<b>Password:</b>
		<% String password = request.getParameter("password"); 
		out.println(password);%>
	</p>
	<p>
	<b>Resultado:</b>
	<% ClienteController cte = new ClienteController();
		if(cte.consultarUsuario(usuario,password)) {
			out.println("Usuario y contraseña existe!!");
			String redirectURL = "usuarios.html";
		    response.sendRedirect(redirectURL);
		}
		else out.println("Usuario y contraseña NO encontrado!!");
	%>
	
	</p>
	
</body>
</html>