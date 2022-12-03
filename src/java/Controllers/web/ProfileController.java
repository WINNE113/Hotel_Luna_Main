package Controllers.web;

import Entites.web.EmployeeEntity;
import Entites.web.GuestEntity;
import Service.web.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileController", value = "/my-profile")
public class ProfileController extends HttpServlet {
    private  EmployeeService employeeService = new EmployeeService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isEmployee = (Boolean) request.getSession().getAttribute("isEmployee");
        if (isEmployee==true){
            EmployeeEntity employeeEntity = (EmployeeEntity) request.getSession().getAttribute("user");
            request.setAttribute("employee",employeeEntity);
            request.getRequestDispatcher("employee-profile.jsp").forward(request,response);
        } else{
            GuestEntity guest = (GuestEntity) request.getSession().getAttribute("user");
            request.setAttribute("guest",guest);
            request.getRequestDispatcher("guest-profile.jsp").forward(request,response);
            //vì trong db, Hotel table m k có field hotel name nên t để hotelID nha :v
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
