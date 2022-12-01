/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.BookingSuccess;
import Entites.web.InfBooking;
import Entites.web.RoomCart;
import Entites.web.RoomDetail;
import Service.web.ICheckOutService;
import Service.web.IRoomService;
import Service.web.impl.CheckOutService;
import Service.web.impl.RoomService;
import java.io.IOException;
import java.sql.Time;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "CheckValidRoom", urlPatterns = {"/checkvalidroom"})
public class CheckValidRoom extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int roomId = Integer.parseInt(request.getParameter("rid"));
        int numOfAdults = Integer.parseInt(request.getParameter("adults"));
        int numOfChildren = Integer.parseInt(request.getParameter("children"));
        String checkIn = request.getParameter("checkIn");
        String checkOut = request.getParameter("checkOut");

        String[] dayCheckIn = checkIn.split("T");       // [0] = yyyy-mm-dd, [1]= 00:00:000   
        String[] dayCheckOut = checkOut.split("T");     // [0] = yyyy-mm-dd, [1]= 00:00:000

        LocalDate dayToCheckIn = LocalDate.parse(dayCheckIn[0]);
        LocalDate dayToCheckOut = LocalDate.parse(dayCheckOut[0]);

        Time timeToCheckIn = Time.valueOf(dayCheckIn[1] + ":00");
        Time timeToCheckOut = Time.valueOf(dayCheckOut[1] + ":00");

        ICheckOutService checkOutService = new CheckOutService();
        IRoomService roomService = new RoomService();
        
        BookingSuccess bs = checkOutService.checkRoomAvailability(roomId);

        request.setAttribute("rid", roomId);

        InfBooking infBooking = new InfBooking(
                numOfAdults,
                numOfChildren,
                dayToCheckIn,
                dayToCheckOut,
                timeToCheckIn,
                timeToCheckOut);

        request.setAttribute("infToBooking", infBooking);

        if (bs != null) {
            Format formatter = new SimpleDateFormat("yyyy-MM-dd");
            String day = formatter.format(bs.getDayCheckOut());         // convert date to string
            if (dayCheckIn[0].compareTo(day) > 0) {     // ngay dat > ngay get DB
                System.out.println("Cho phep dat");
                request.getRequestDispatcher("cartcontroller").forward(request, response);
            } else if (dayCheckIn[0].compareTo(day) < 0) {  // ngay dat < ngay get DB 
                System.out.println("Khong Cho phep dat");
                RoomDetail detail = roomService.getRoomById(roomId);
                request.setAttribute("room", detail);
                String message = "Sorry! The room is only available from after day: " + bs.getDayCheckOut();
                request.setAttribute("message", message);
                request.getRequestDispatcher("Room.jsp").forward(request, response);

            } else {                                    // ngay dat = ngay get tu DB -> xet gio
                // check gio booking
                System.out.println("Trung Ngay");
                RoomDetail detail = roomService.getRoomById(roomId);
                request.setAttribute("room", detail);
                String message = "Sorry! The room is only available from after the day: " + day;
                request.setAttribute("message", message);
                request.getRequestDispatcher("Room.jsp").forward(request, response);
            }
        } else {
            System.out.println("Bo Deo Can Check Luon day: ");
            request.getRequestDispatcher("cartcontroller").forward(request, response);
        }
    }
}
