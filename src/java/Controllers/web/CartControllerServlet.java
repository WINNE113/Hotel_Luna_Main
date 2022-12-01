/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.Account;
import Entites.web.Guest;
import Entites.web.InfBooking;
import Entites.web.RoomCart;
import Entites.web.RoomDetail;
import Service.web.IRoomService;
import Service.web.impl.RoomService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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
@WebServlet(name = "CartControllerServlet", urlPatterns = {"/cartcontroller"})
public class CartControllerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int roomId = Integer.parseInt(request.getParameter("rid"));

        InfBooking infToBooking = (InfBooking) request.getAttribute("infToBooking");    // Thong tin day-time-checkin-out-adults-childrent

        IRoomService roomService = new RoomService();
        RoomDetail roomDetail = roomService.getRoomById(roomId);

        HttpSession session = request.getSession();     // open session

        RoomCart roomCart;

        Guest guest = (Guest) session.getAttribute("account");
        if (guest != null) {    // Xet xem nguoi dung da dang nhap ?
            HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
            if (cart == null) {     // cart la rong
                cart = new HashMap<Integer, RoomCart>();    // tao 1 cart
                roomCart = new RoomCart(roomDetail, infToBooking);
                cart.put(roomId, roomCart);
            } else {
                roomCart = new RoomCart(roomDetail, infToBooking);
                cart.put(roomId, roomCart);

            }
            session.setAttribute("cart", cart);
            response.sendRedirect("cart");
//            response.sendRedirect("cart");
        } else {
            response.sendRedirect("Login.jsp");
        }

    }

}
