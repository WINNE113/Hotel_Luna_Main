/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.Guest;
import Service.web.ILoginService;
import Service.web.impl.LoginService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String passWork = request.getParameter("pass");
        ILoginService service = new LoginService();
        Guest guest = service.loginAcc(email, passWork);
        HttpSession session = request.getSession();
        if (guest != null) {
            session.setAttribute("account", guest);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            String message = "Invalid email or passWord!";
            request.setAttribute("message", message);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }

    }
}
