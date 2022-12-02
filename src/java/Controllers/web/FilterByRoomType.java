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
import java.util.Arrays;
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
@WebServlet(name = "FilterByRoomType", urlPatterns = {"/filterbyroomtype"})
public class FilterByRoomType extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String allRoomType = request.getParameter("allRoomType");
        if (allRoomType.equals("[]")) {
            
        } else {
            List<String> listRoomType = new ArrayList<>();          // list to store all room type
            System.out.println("Filter Room Type: " + allRoomType);
            Pattern pp = Pattern.compile("\\w+");           // split string price -> int price
            Matcher m = pp.matcher(allRoomType);

            while (m.find()) {
                listRoomType.add(m.group());
            }

            IRoomService roomService = new RoomService();

            List<RoomDetail> listRoom = null;
            if (listRoomType.size() == 1) {
                listRoom = roomService.listRoomByRoomType(listRoomType.get(0));
            } else if (listRoomType.size() == 2) {
                listRoom = roomService.listRoomByTwoRoomType(listRoomType.get(0), listRoomType.get(1));
            } else if (listRoomType.size() == 3) {
                listRoom = roomService.listRoomByThreeRoomType(listRoomType.get(0), listRoomType.get(1), listRoomType.get(2));
            } else if (listRoomType.size() == 4) {
                listRoom = roomService.listRoomByFourRoomType(listRoomType.get(0), listRoomType.get(1), listRoomType.get(2), listRoomType.get(3));
            }
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
