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

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "SignUpServlet", urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String fitstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");

        ILoginService service = new LoginService();

        Guest checkEmailExit = service.checkEmailExit(email);
        Guest checkPhoneExit = service.checkPhoneExit(phone);
        if (checkEmailExit != null || checkPhoneExit != null) {
            request.setAttribute("message", "Email or Phone is exit!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            if (pass.equals(repass)) {
                service.signUp(fitstName, lastName, email, phone, pass);
                System.out.println("Sign up success");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "Repassword is invalid!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }

        }
    }

}
