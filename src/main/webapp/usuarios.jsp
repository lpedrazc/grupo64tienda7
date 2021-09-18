<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estilousuario.css">
</head>
<body>
	<h1 style="color: black;">Tienda Genérica</h1>
	<ul class="menu">
	<jsp:include page="menu.jsp"></jsp:include>
	</ul>
	<h1>Usuarios</h1>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda","root","admin12345");
	PreparedStatement ps = conexion.prepareStatement("SELECT * FROM usuarios");
	ResultSet result = ps.executeQuery();
	
	%>
	<a href= "agregarUsuario.html">Agregar Usuario</a>
	<table border = "1" class="Tabla">
	
		<tr>
			<th>Cedula</th>
			<th>Correo</th>
			<th>Nombre</th>
			<th>Contraseña</th>
			<th>Usuario</th>
			<th colspan = "2">Acciones</th>
			
		</tr>
		<%
			while(result.next()){

		%>
		<tr>
			<td><%=result.getInt("cedula_usuario") %></td>
			<td><%=result.getString("email_usuario") %></td>
			<td><%=result.getString("nombre_usuario") %></td>
			<td><%=result.getString("password") %></td>
			<td><%=result.getString("usuario") %></td>
			<td><a href ="editar.jsp?cedula=<%=result.getInt("cedula_usuario") %>">Editar</a></td>
			<td><a href ="eliminar.jsp?cedula=<%=result.getInt("cedula_usuario") %>">Eliminar</a></td>			
		</tr>
		<%} %>
	</table>
	

</body>
</html>