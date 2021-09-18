<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="co.edu.mintic.Calculos" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>primer JSP</title>
<style>
	body{
		background-color:yellow;
	}
	h1{
		color:blue;
	}
	span{
		color_red;
	}

</style>
</head>
<body>
	<h1>Primer JSP</h1>
	la fecha del sistema es <span><%= new java.util.Date() %></span><br>
	Convertir a mayúsculas <%= new String("Diana").toUpperCase() %><br>
	La suma de 5 y 7 es: <%= 5+7 %><br>
	10 es mayor 100 ?? <%= 10>100 %>
	<%
		for(int i =0; i<10; i++){
			out.println("<br> Es el mensaje "+i);
		}
	%>
	
	<%!
		private int resultado;
		public int metodoSuma(int num1, int num2){
			resultado= num1+num2;
			return resultado;
		}
	%>
	<br>
	<%= metodoSuma(7,5)%>
	<br>
	La resta entre 8 y 3 es: <%= Calculos.metodoResta(8,3) %>
	<br>
	Petición datos del navegador <%= request.getHeader("User-Agent") %>
	<br>
	Petición de idioma utilizado <%= request.getLocale() %>
	<br>
	<jsp:include page="info.jsp"></jsp:include>
	<br>
	<jsp:include page="info.jsp"></jsp:include>
	<br>
	<jsp:include page="info.jsp"></jsp:include>
	
</body>
</html>