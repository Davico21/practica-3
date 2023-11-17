
<%@page import="com.emergentes.entidades.Contactos"%>
<%@page import="java.util.List"%>
<%
    List<Contactos> lista = (List<Contactos>) request.getAttribute("contacto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <div class="container col-6">
                <p class="text-center fs-1">Listado de Contactos</p>
                <table class="table table-bordered">

                    <tr class="table table-info">
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Telefono</th>
                        <th>Correo</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <%for (Contactos item : lista) {
                    %>
                    <tr>
                        <td><%= item.getId()%></td>
                        <td><%= item.getNombre()%></td>
                        <td><%= item.getCorreo()%></td>
                        <td><%= item.getTelefono()%></td>
                        <td><a href="MainController?action=edit&id=<%= item.getId()%>" class="btn btn-warning">Editar</a></td>
                        <td><a href="MainController?action=delete&id=<%= item.getId()%>" class="btn btn-danger">Eliminar</a></td>

                    </tr>
                    <%}%>
                </table>
                <a href="MainController?action=add" class="btn btn-primary">Nuevo</a>
            </div>
        </div>
    </body>
</html>
