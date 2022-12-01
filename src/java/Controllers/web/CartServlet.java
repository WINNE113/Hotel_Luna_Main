/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.InfBooking;
import Entites.web.RoomCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import static java.time.temporal.ChronoUnit.DAYS;
import java.util.HashMap;
import java.util.Map;
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
@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
        double totalMoney = 0;
        int numOfRooms = 0;
        for (Map.Entry<Integer, RoomCart> entry : cart.entrySet()) {
            RoomCart value = entry.getValue();
            long dayBetween = 0;

            dayBetween = DAYS.between(value.getInfBooking().getDayCheckIn(), value.getInfBooking().getDayCheckOut());

            totalMoney += dayBetween * value.getRoomDetail().getRoomPrice();

            numOfRooms++;
        }
        session.setAttribute("totalMoney", totalMoney);
        session.setAttribute("numOfRooms", numOfRooms);

        request.setAttribute("cart", cart);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
