<%-- 
    Document   : index
    Created on : 10/05/2016, 08:57:31 PM
    Author     : Guido
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda</title>
    </head>
    <body>
        <h1>Agregar nuevos contactos</h1>
        <form action="Visualizar" method="POST">
            
            Nombre:<input type="text" name="nombre"><br/>
            Apellido:<input type="text" name="apellido"><br/>
            Celular:<input type="text" name="celular"><br/>
            <input type="submit" value="Gravar">
        </form>
    </body>
</html>
