/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.RoomDetail;
import Service.web.IRoomService;
import Service.web.impl.RoomService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "FilterRoomByPrice", urlPatterns = {"/filterbyprice"})
public class FilterRoomByPrice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String allPrice = request.getParameter("allPrice");
        if (allPrice.equals("[]")) {    // Neu get price is null
            allPrice = "0,0";           // set price [0,0]
        } else {
            List<Integer> listPrice = new ArrayList<>();  // store all price

            Pattern pp = Pattern.compile("\\d+");           // split string price -> int price
            Matcher m = pp.matcher(allPrice);

            while (m.find()) {
                listPrice.add(Integer.parseInt(m.group()));
            }

            int minPrice = Collections.min(listPrice);      // get min price
            System.out.println("min: " + minPrice);
            int maxPrice = Collections.max(listPrice);      // get max price
            System.out.println("maxPrice: " + maxPrice);
            IRoomService service = new RoomService();
            List<RoomDetail> listRoom = service.listRoomByPrice(minPrice, maxPrice);

            PrintWriter out = response.getWriter();
            for (RoomDetail item : listRoom) {
                out.print("<div class=\"result_block\">\n"
                    + "                                    <div class=\"image_hotel\">\n"
                    + "                                        <img src=\"" + item.getRoomImg() + "\" alt=\"room hotel\">\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"content_hotel\">\n"
                    + "                                        <div class=\"main_content\">\n"
                    + "                                            <div class=\"title_hotel\">\n"
                    + "                                                <span>" + item.getRoomTypeName() + "</span>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"address_hotel\">\n"
                    + "                                                <span>" + item.getHotelAddress() + "</span>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"price_hotel\">\n"
                    + "                                                <span>From</span>\n"
                    + "                                                <h5>VND " + item.getRoomPrice() + "</h5>\n"
                    + "                                                <span>For Night</span>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"btn_booking\">\n"
                    + "                                            <a href=\"checkvalid?rid="+item.getRoomId()+"\">Add To Cart</a>\n"
                    + "                                            <span></span>\n"
                    + "                                            <span></span>\n"
                    + "                                            <span></span>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
            }
        }
    }
}
