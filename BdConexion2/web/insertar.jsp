<%-- 
    Document   : insertar
    Created on : 11-oct-2016, 15:29:46
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insertar</h1>
        <%  String idcli = request.getParameter("idCliente");
            String nombre = request.getParameter("nombres");
            String apellido = request.getParameter("apellidos");
            String telef = request.getParameter("telefono");
            String prof = request.getParameter("profesion");
            String foto = request.getParameter("foto");

            if (idcli != null && nombre != null && apellido != null && telef != null && prof != null && foto != null) {
                String cc = "insert into cliente(idCliente,nombres,apellidos,telefono,profesion,foto) values('"
                        + idcli + "','" + nombre + "','" + apellido + "','" + telef + "','" + prof + "','" + foto + "')";
                sql.executeUpdate(cc);
                out.print("Usuario Registrado " + "<a href='insertar.jsp'>REGRESAR</a>");
            } else {

        %>
        <form name="frmuser" method="post" action="insertar.jsp">
            idCliente:<input type="text" name="idCliente"><br/>
            Nombres:<input type="text" name="nombres"><br/>
            Apellidos:<input type="text" name="apellidos"><br/>
            Telefono:<input type="text" name="telefono"><br/>
            
            <tr>
            <td>Profesion: </td>
            <td><select name="profesion" id="idPerfil">
                    <option value="0">Seleccione perfil...</option>
                    <option value="1">Administrador</option>
                    <option value="2">Ingeniero</option>
                    <option value="3">Contador</option>
                </select></td>
            </tr><br/>
            Fotos:<input type="text" name="foto"><br/>
            
            <%--   <tr>
                <td>Foto:</td>
                <td><input type="file" name="fotos" id="fotos" value="" /></td>
            </tr><br/>
            ('"+nombre+"','"+apellido+"','"+telefono+"')";
            %--%>
            <tr>
                <td></td>
            <input type="submit" value="Guardar"/>
            </tr>
        </form>
        <%}%>
    </body>
</html>