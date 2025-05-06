<%-- 
    Document   : consulta
    Created on : 2/05/2025, 7:58:17 a. m.
    Author     : Personal
--%>

<%@page import="java.util.List" %>
<%@page import="controladores.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Usuarios</title>
        <style>
            body {
                font-family: sans-serif;
                background-color: #000;
                color: #fff;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            .container {
                background-color: #1e272e;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
                width: 80%;
                max-width: 800px;
            }

            h1 {
                color: #64b5f6;
                text-align: center;
                margin-bottom: 20px;
            }

            p {
                line-height: 1.6;
                margin-bottom: 15px;
            }

            .menu {
                text-align: center;
                margin-top: 20px;
            }

            .menu a {
                display: inline-block;
                color: #fff;
                background-color: #2979ff;
                padding: 10px 20px;
                text-decoration: none;
                border-radius: 5px;
                margin: 0 10px;
                transition: background-color 0.3s ease;
            }

            .menu a:hover {
                background-color: #1565c0;
            }

            h2 {
                color: #64b5f6;
                margin-top: 25px;
                margin-bottom: 10px;
            }

            ul {
                list-style: none;
                padding-left: 20px;
            }

            ul li::before {
                content: "\2022";
                color: #64b5f6;
                display: inline-block;
                width: 1em;
                margin-left: -1em;
            }

            ul li {
                margin-bottom: 8px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                color: #fff;
                margin-bottom: 5px;
            }

            .form-group input[type="email"] {
                width: calc(100% - 22px);
                padding: 10px;
                border: 1px solid #444;
                border-radius: 4px;
                background-color: #333;
                color: #fff;
                box-sizing: border-box;
            }

            .form-group button[type="submit"].btn {
                margin-top: 10px;
            }

            .btn {
                background-color: #2979ff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 1em;
                transition: background-color 0.3s ease;
            }

            .btn:hover {
                background-color: #1565c0;
            }

            .resultado-busqueda {
                margin-top: 20px;
                padding: 15px;
                background-color: #2c3e50;
                border-radius: 4px;
            }

            .resultado-busqueda h2 {
                color: #64b5f6;
                margin-top: 0;
                margin-bottom: 10px;
                text-align: left; 
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
                color: #fff;
            }

            th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #444;
            }

            th {
                background-color: #34495e;
                color: #fff;
            }

            .not-found {
                color: #e74c3c;
                background-color: #c0392b;
                padding: 10px;
                border-radius: 4px;
                text-align: center;
            }

            .lista-usuarios {
                margin-top: 20px;
                padding: 15px;
                background-color: #2c3e50;
                border-radius: 4px;
            }

            .lista-usuarios h2 {
                color: #64b5f6;
                margin-top: 0;
                margin-bottom: 10px;
                text-align: left;
            }

            .lista-usuarios p {
                text-align: center;
                color: #ccc;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Consulta de Usuarios</h1>
            
            <form action="consulta" method="GET">
                <div class="form-group">
                    <label for="email">Buscar usuario por email:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit" class="btn">Buscar</button>
                </div>
            </form>
            
            <% if (request.getAttribute("busquedaRealizada") != null) { %>
                <div>
                    <h2>Resultado de la búsqueda</h2>
                    
                    <% if (request.getAttribute("usuarioBuscado") != null) { %>    
                        <% Usuario usuario = (Usuario)request.getAttribute("usuarioBuscado"); %>
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                            </tr>
                            <tr>
                                <td><%= usuario.getNombre() %></td>
                                <td><%= usuario.getApellido() %></td>
                                <td><%= usuario.getEmail() %></td>
                            </tr>
                        </table>
                    <% } else { %>
                        <div class="not-found">
                            No se encontró ningún usuario con el email especificado.
                        </div>
                    <% } %>
                </div>
            <% } %> 
            
            <h2>Lista de Usuarios Registrados</h2>
            <%
                List<Usuario> listaUsuarios = (List<Usuario>)session.getAttribute("listaUsuarios");
                if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
            %>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                    </tr>
                    <% for (Usuario u : listaUsuarios) { %>
                    <tr>
                        <td><%= u.getNombre() %></td>
                        <td><%= u.getApellido() %></td>
                        <td><%= u.getEmail() %></td>
                    </tr>
                    <% } %>
                </table>
            <% } else { %>
                <p>No hay usuarios registrados en el sistema.</p>
            <% } %>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="registro">Registrar Usuario</a>
            </div>
        </div>
    </body>
</html>
