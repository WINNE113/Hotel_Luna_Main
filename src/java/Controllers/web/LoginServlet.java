package Controllers.web;

import config.Validation;
import Entites.web.EmployeeEntity;
import Entites.web.GuestEntity;
import Service.web.impl.AuthenticateService;
import Service.web.impl.EmployeeService;
import Service.web.impl.GuestService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginPage", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    private Validation validation = new Validation();
    private AuthenticateService service = new AuthenticateService();
    private GuestService guestService = new GuestService();
    private EmployeeService employeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        if (email.isEmpty() || password.isEmpty()) {
            req.setAttribute("MSG", "Vui lòng điền đầy đủ thông tin đăng nhập");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        if (validation.checkValidEmail(email) == false) {
            req.setAttribute("MSG", "Email vừa nhập không hợp lệ. Vui lòng thử lại...");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        HttpSession session = req.getSession();
        boolean isLogin = service.checkLogin(email, password);
        if (isLogin == true) {
            String fullname = "";

            EmployeeEntity employee = employeeService.getEmployeeByEmail(email);
            GuestEntity guest = guestService.getGuestByEmail(email);

            if (employee.getEmployeeID() > 0) {
                session.setAttribute("user", employee);
                session.setAttribute("isEmployee", true);
                fullname = employee.getFirstName() + " " + employee.getLastName();
            } else {
                session.setAttribute("user", guest);
                session.setAttribute("isEmployee", false);
                fullname = guest.getFirstName() + " " + guest.getLastName();
            }

            session.setAttribute("fullname", fullname);
            session.setAttribute("isLogin", true);
            session.setMaxInactiveInterval(8 * 60);

            resp.sendRedirect("home");

        } else {
            req.setAttribute("MSG", "Email hoặc mật khẩu không đúng. Vui lòng thử lại...");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        System.out.println("Kiem tra trang thai login: " + isLogin);
    }
}
