<%-- 
    Document   : indexx
    Created on : 12-oct-2016, 13:01:45
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de alumnos</title>
    </head>

    <body>
        <form action="AccesoCalidad.java" method="post">
            <table align="center" width="289" border="1">
                <tr>
                    <td>IdCliente</td>
                    <td>Nombres</td>
                    <td>Apellidos</td>
                    <td>Telefono</td>
                    <td>Profesion</td>
                    <td>Foto</td>

                </tr>
                <tr>
                    <td><input type="text" name="idCliente" id="codigo"></td>
                    <td><input type="text" name="nombres" id="nombres"></td>
                    <td><input type="text" name="apellidos" id="profesion"></td>
                    <td><input type="text" name="telefono" id="especialidad"></td>
                    <td><input type="text" name="profesion" id="telefono"></td>
                    <td><input type="text" name="fotos" id="telefono"></td>
                    <td><input type="submit" value="buscar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

