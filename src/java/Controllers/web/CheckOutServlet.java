/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.Guest;
import Entites.web.RoomCart;
import Service.web.ICheckOutService;
import Service.web.impl.CheckOutService;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.ZoneId;
import static java.time.temporal.ChronoUnit.DAYS;
import java.util.Date;
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
@WebServlet(name = "CheckOutServlet", urlPatterns = {"/checkout"})
public class CheckOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        double totalMoney = 0;
        HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
        for (Map.Entry<Integer, RoomCart> entry : cart.entrySet()) {
            Integer key = entry.getKey();
            RoomCart value = entry.getValue();
            long dayBetween = 0;
            dayBetween = DAYS.between(value.getInfBooking().getDayCheckIn(), value.getInfBooking().getDayCheckOut());

            totalMoney += dayBetween * value.getRoomDetail().getRoomPrice();
            // ngay check in = ngay check out
        }
        System.out.println("Totalmoney: " + totalMoney);
        request.setAttribute("totalMoney", totalMoney);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("CheckOut.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        HttpSession session = request.getSession();
        ICheckOutService checkOutService = new CheckOutService();

        Guest guest = (Guest) session.getAttribute("account");

        double totalMoney = 0;
        double money = 0;
        int guestId = Integer.parseInt(guest.getGuestId());

        HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
        for (Map.Entry<Integer, RoomCart> entry : cart.entrySet()) {
            Integer key = entry.getKey();
            RoomCart value = entry.getValue();
            totalMoney += (value.getInfBooking().getDayCheckOut().getDayOfMonth() - value.getInfBooking().getDayCheckIn().getDayOfMonth()) * value.getRoomDetail().getRoomPrice();

        }
        System.out.println("Total Money: " + totalMoney);
        if (guest != null) {
            // Insert data to Db Booking
            int booKingId = checkOutService.insertToBooking(guestId, 1, totalMoney, fullName, email, phone, address);
            System.out.println("BookingId: " + booKingId);
            for (Map.Entry<Integer, RoomCart> entry : cart.entrySet()) {
                Integer key = entry.getKey();
                RoomCart value = entry.getValue();
                money = (value.getInfBooking().getDayCheckOut().getDayOfMonth() - value.getInfBooking().getDayCheckIn().getDayOfMonth()) * value.getRoomDetail().getRoomPrice();
                checkOutService.insertToBookingDetail(
                        booKingId,
                        value.getRoomDetail().getRoomId(),
                        java.sql.Date.valueOf(value.getInfBooking().getDayCheckIn()),
                        java.sql.Date.valueOf(value.getInfBooking().getDayCheckOut()),
                        value.getInfBooking().getTimeCheckIn(),
                        value.getInfBooking().getTimeCheckOut(),
                        value.getInfBooking().getNumOfAdults(),
                        value.getInfBooking().getNumOfChildren(),
                        value.getRoomDetail().getRoomPrice(),
                        money);
                System.out.println("Insert Sussess");
            }
            session.removeAttribute("cart");

            session.removeAttribute("totalMoney");

            session.removeAttribute("numOfRooms");

            response.sendRedirect("home");

        }
    }

}
