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
@WebServlet(name = "FiterByTypeBed", urlPatterns = {"/filterbytypebed"})
public class FiterByTypeBed extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String typeBed = request.getParameter("typebed");
        if (typeBed.equals("[]")) {

        } else {
            List<String> listTypeBed = new ArrayList<>();  // store all type bed

            Pattern pp = Pattern.compile("\\w+");           // split string price -> int price
            Matcher m = pp.matcher(typeBed);

            while (m.find()) {
                listTypeBed.add(m.group());
            }

            for (String item : listTypeBed) {
                System.out.println("item: " + item);
            }

            IRoomService roomService = new RoomService();

            List<RoomDetail> listRoom = null;

            if (listTypeBed.size() == 1) {
                listRoom = roomService.listRoomByBedType(listTypeBed.get(0));
            } else if (listTypeBed.size() == 2) {
                listRoom = roomService.listRoomByTwoBedType(listTypeBed.get(0), listTypeBed.get(1));
            } else if (listTypeBed.size() == 3) {
                listRoom = roomService.listRoomByThreeBedType(listTypeBed.get(0), listTypeBed.get(1), listTypeBed.get(2));
            }

            PrintWriter writer = response.getWriter();

            for (RoomDetail item : listRoom) {
                writer.print("<div class=\"result_block\">\n"
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
                        + "                                            <a href=\"checkvalid?rid=" + item.getRoomId() + "\">Add To Cart</a>\n"
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
