

<%@page import="com.emergentes.entidades.Contactos"%>

<%
    Contactos lista = (Contactos) request.getAttribute("contacto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container col-6">
            <h1>Registro de contactos</h1>
            <form action="MainController" method="post">
                <input type = "hidden" name="id" value="${contacto.id}">
                <table>
                    <tr>
                        <td class="form-label">Nombre</td>
                        <td><input class="form-control" type = "text" name="nombre" value="${contacto.nombre}"></td>
                    </tr>
                    <tr>
                        <td class="form-label">Telefono</td>
                        <td><input class="form-control" type = "text" name="telefono" value="${contacto.telefono}"></td>
                    </tr>
                    <tr>
                        <td class="form-label">Correo</td>
                        <td><input class="form-control" type = "text" name="correo" value="${contacto.correo}"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input class="btn btn-success" type = "submit" value="Enviar"></td>
                    </tr>
                </table>

            </form>
        </div>
    </body>
</html>
