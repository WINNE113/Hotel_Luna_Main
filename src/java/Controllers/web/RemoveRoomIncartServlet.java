/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.RoomCart;
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
@WebServlet(name = "RemoveRoomIncartServlet", urlPatterns = {"/remove"})
public class RemoveRoomIncartServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        
        HttpSession httpSession = request.getSession();
        
        HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) httpSession.getAttribute("cart");
        if (cart.containsKey(rid)) {
            cart.remove(rid);
            response.sendRedirect("Cart.jsp");
        }
    }
}
