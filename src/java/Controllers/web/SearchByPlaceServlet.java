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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "SearchByPlaceServlet", urlPatterns = {"/searchbyplace"})
public class SearchByPlaceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cityId = request.getParameter("hid");
        IRoomService service = new RoomService();
        Map<Integer, List<RoomDetail>> map = new HashMap();
        map = service.listRoomByPlace(cityId);
        for (Map.Entry<Integer, List<RoomDetail>> entry : map.entrySet()) {
            Integer key = entry.getKey();
            request.setAttribute("total", key);
            List<RoomDetail> listRoom = entry.getValue();
            request.setAttribute("listRoom", listRoom);
        }
        request.getRequestDispatcher("Room.jsp").forward(request, response);
    }
}
