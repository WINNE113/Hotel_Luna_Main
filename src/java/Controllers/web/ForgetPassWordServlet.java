/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.Guest;
import Service.web.ILoginService;
import Service.web.ISendEmail;
import Service.web.impl.LoginService;
import Service.web.impl.SendEmail;
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
@WebServlet(name = "ForgetPassWordServlet", urlPatterns = {"/forgetpassword"})
public class ForgetPassWordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        String subject = "Luna Hotel";
        ILoginService loginService = new LoginService();

        ISendEmail service = new SendEmail();
        // return lai một account nếu email tồn tại
        Guest account = loginService.checkEmailExit(email);
        if (account != null) {
            String passWord = loginService.getPassWordByEmail(email);
            String m = "You PassWork: " + passWord;
            service.send(email, subject, m, "thanglhde150360@fpt.edu.vn", "18093101@");
            response.sendRedirect("Login.jsp");
        } else {
            request.setAttribute("message", "Email Not Exit!");
            request.getRequestDispatcher("ForgetPassword.jsp").forward(request, response);
        }

    }

}
