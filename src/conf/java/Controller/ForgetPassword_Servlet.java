/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Guest;
import Repository.CustomerDao;
import Repository.SendEmail;
import Service.Login_Service;
import Service.Login_ServiceImpl;
import Service.SendEmail_Service;
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
@WebServlet(name = "ForgetPassword_Servlet", urlPatterns = {"/forgetpassword"})
public class ForgetPassword_Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
         
        String subject = "Your order has been processing.";
       
        Login_Service service = new Login_ServiceImpl();
        // return lai một account nếu email tồn tại
        Guest account = service.checkEmailExit(email);
        if (account != null) {
            String passWord = service.getPassWordByEmail(email);
            String m = "You PassWork: " + passWord;
            SendEmail.send(email, subject, m, "thanglhde150360@fpt.edu.vn", "18093101@");
            response.sendRedirect("Login.jsp");
        } else {
            request.setAttribute("message", "Email Not Exit!");
            request.getRequestDispatcher("ForgetPassword.jsp").forward(request, response);
        }

    }

}
