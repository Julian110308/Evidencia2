<%-- 
    Document   : index
    Created on : 2/05/2025, 8:00:26 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Registro de Usuarios</title>
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
                max-width: 960px;
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
                margin-bottom: 20px;
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
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenido al Sistema de Registro de Usuarios</h1>
            
            <p>Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados.</p>
            
            <div class="menu">
                <a href="registro.jsp">Registrar Usuario</a>
                <a href="consulta.jsp">Consultar Usuarios</a>
            </div>
            
            <h2>Información del Sistema</h2>
            <p>
                Este sistema es un ejemplo simple que muestra cómo utilizar:
            <ul>
                <li>Servlets para procesar formularios</li>
                <li>JSP para renderizar páginas dinámicas</li>
                <li>Métodos HTTP GET y POST</li>
                <li>Sesiones para almacenar datos</li>
            </ul>
            </p>
        </div>
    </body>
</html>
