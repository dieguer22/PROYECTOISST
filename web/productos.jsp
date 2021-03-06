<%-- 
    Document   : producto
    Created on : 07-may-2014, 12:39:45
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
  <title>Restaurante ISST | Productos</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
 </head>
  <body>
	<!----start-header----->
	 <div class="header">
            <%
                 Boolean logged = (Boolean) session.getAttribute("logged");
                 String displayGestor = "";
                 String displayCliente = "";
                 String entrar = "Entrar";
                 String gestor = "Bienvenido, Gestor";
                 String userActual = "";
                 if (logged == null || !logged) {
                     System.out.println("anon");
                     displayGestor = "none";
                     displayCliente = "";
                     userActual = entrar;
                 } else {
                     displayGestor = "";
                     displayCliente = "none";
                     userActual = gestor;
                 }
             %>
	     <div class="wrap">
			<div class="top-header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="social-icons">
					<ul>
						<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
						<li><a class="button1" href="formulario.jsp"><%=userActual%></a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---start-top-nav---->
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li><a href="index.jsp">Home</a></li>
                                                <li><a style="display:<%=displayCliente%>" href="about.jsp">Sobre nosotros</a></li>
                                                <li><a href="mesasLibres.jsp">Mesas Libres</a></li>
                                                <li><a style="display:<%=displayCliente%>" href="contact.jsp">Contacto</a></li>
                                                <li><a href="services.jsp">Servicios</a></li>
						<li><a href="gallery.jsp">Galeria</a></li>
                                                <li class="active"><a style="display:<%=displayGestor%>" href="productos.jsp"> Añadir Productos</a></li> 
                                                <li><a style="display:<%=displayGestor%>" href="eliminarproductos.jsp"> Eliminar Productos</a></li>                                                
						<li><a style="display:<%=displayGestor%>" href="estadisticas.jsp">Estadisticas</a></li>
                                                
						<div class="clear"> </div>
					</ul>
				</div>
				
				<div class="clear"> </div>
			</div>
			<!---End-top-nav---->
		</div>
	</div>
   <!----End-header----->
		 <!---start-content---->
		 <div class="content">
		 	<!---start-contact---->
		 	<div class="contact">
		 		<div class="wrap">
				<div class="section group">				



				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Introduce un plato nuevo:</h3>
					    <form method="post" action="/ISST/CrearProducto">
					    	<div>
						    	<span><label>NOMBRE</label></span>
						    	<span><input name="nombre" type="text" value="" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>CATEGORIA</label></span>
                                                        <!--select class="form-control" id="category" name="categoria">
                                                        <% for (int i=1; i<=11; i++)
                                                        { %>
                                                        <option><%=i%></option>
                                                        <%}
                                                        %>
                                                        </select-->
						    	<span><input name="categoria" type="text" class="textbox"></span>
                                                        
						    </div>
						    <div>
						    	<span><label>INGREDIENTES</label></span>
						    	<span><textarea name="ingredientes" type="text" class="texbox"> </textarea></span>
						    </div>
						    <div>
						    	<span><label>DESCRIPCION</label></span>
						    	<span><textarea name="descripcion"> </textarea></span>
						    </div>
						    <div>
						    	<span><label>PRECIO</label></span>
						    	<span><input name="precio" type="text" class="textbox"></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="mybutton" value="Submit"></span>
						  </div>
					    </form>

				    </div>
  				</div>				
			</div>
			</div>
		 	<!---End-contact---->
		 <!---End-content---->
		 <!---start-footer---->
		
	</div>

		 <!---End-footer---->
	</body>
</html>