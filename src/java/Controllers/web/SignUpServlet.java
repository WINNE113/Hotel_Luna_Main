package Controllers.web;

import config.Validation;
import Entites.web.GuestEntity;
import Service.web.impl.AuthenticateService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUpController", value = "/sign-up")
public class SignUpServlet extends HttpServlet {
    private Validation validation = new Validation();
    private AuthenticateService service = new AuthenticateService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passport = request.getParameter("passport");
        String address = request.getParameter("address");

//        if (validation.isDateValid(dob) == false) {
//            request.setAttribute("MSG", "Date of birth is not valid/ wrong format...");
//            request.getRequestDispatcher("signup.jsp").forward(request, response);
//        } else
            if (service.checkEmailExist(email) == true) {
            request.setAttribute("MSG", "Sign up fail! Your email has exist");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
            GuestEntity guest = new GuestEntity();
            guest.setFirstName(firstname);
            guest.setLastName(lastname);
            guest.setEmail(email);
            guest.setAddress(address);
            guest.setPassword(password);
            guest.setPassport(passport);
            guest.setGender(gender);
            guest.setPhoneNumber(phonenumber);
            guest.setDob(dob);
            boolean isSignupSuccess = service.checkSignup(guest);
            if (isSignupSuccess == false) {
                request.setAttribute("MSG", "Sign up fail!!!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else {
                request.setAttribute("MSGS", "Sign up successfully. Please login to continue...");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }
}
