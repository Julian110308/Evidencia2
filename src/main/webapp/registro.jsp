<%-- 
    Document   : registro
    Created on : 2/05/2025, 8:00:49 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuario</title>
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
                max-width: 600px;
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

            .form-group input[type="text"],
            .form-group input[type="email"],
            .form-group input[type="password"] {
                width: calc(100% - 22px);
                padding: 10px;
                border: 1px solid #444;
                border-radius: 4px;
                background-color: #333;
                color: #fff;
                box-sizing: border-box;
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

            .message {
                background-color: #4caf50;
                color: #fff;
                padding: 10px;
                border-radius: 4px;
                margin-bottom: 15px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Registro de Usuario</h1>
            
            <% if(request.getAttribute("mensaje") != null){ %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
                <% } %>
                
                <form action="registro" method="post">
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="apellido">Apellido:</label>
                        <input type="text" id="apellido" name="apellido" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Contraseña:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn">Registrar</button>
                    </div>
                </form>
                
                <div class="menu">
                    <a href="index.jsp">Volver al inicio</a>
                    <a href="consulta.jsp">Consultar Usuarios</a>
                </div>
        </div>
    </body>
</html>
