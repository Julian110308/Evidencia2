/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "ConsultaServlet", urlPatterns = {"/consulta"})
public class ConsultaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        List<Usuario> listaUsuarios = (List<Usuario>)session.getAttribute("listaUsuarios");
        if(listaUsuarios == null){
            listaUsuarios = new ArrayList<>();
            session.setAttribute("listaUsuarios", listaUsuarios);
        }
        String emailBusqueda = request.getParameter("email");
        
        if(emailBusqueda != null && !emailBusqueda.isEmpty()){
            Usuario usuarioEncontrado = null;
            
            for(Usuario usuario : listaUsuarios){
                if(usuario.getEmail().equals(emailBusqueda)){
                    usuarioEncontrado = usuario;
                    break;
                }
            }
            request.setAttribute("usuarioBuscado", usuarioEncontrado);
            request.setAttribute("busquedaRealizada", true);
        }
        request.getRequestDispatcher("/consulta.jsp").forward(request, response);
    }
}
