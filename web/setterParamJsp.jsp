
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP que modifica a un Javabean por parametros</title>
    </head>
    <body>
        <h1>JSP que modifica a un Javabean por parametros</h1>
    </body><!--Declaramos el Javabean a utilizar-->
    <jsp:useBean id="rectangulo" class="beans.Rectangulo"
                 scope="session"/>
    Modificacion de los atributos:
    <br>
    <br>
    
    <jsp:setProperty name="rectangulo"
                     property="base" param="baseParam"/>
    Nuevo valor base: <%=request.getParameter("baseParam")%>
    <br>
    
    <jsp:setProperty name="rectangulo"
                     property="altura" param="alturaParam" />
    
    Nuevo valor aluta: <%=request.getParameter("alturaParam")%>
    
    <br>
    <br>
    <a href="index.jsp">Regresar al inicio</a>
</html>
