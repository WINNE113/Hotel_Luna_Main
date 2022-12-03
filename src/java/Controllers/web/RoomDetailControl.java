/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Entites.web.Comment;
import Entites.web.RoomDetail;
import Dao.RoomDetailDao;
import Entites.web.RoomDetail1;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ndatw
 */
@WebServlet(name = "RoomDetailControl", urlPatterns = {"/RoomDetail"})
public class RoomDetailControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int roomNo = Integer.parseInt(request.getParameter("rid"));
        RoomDetailDao dao = new RoomDetailDao();
        RoomDetail1 rd = dao.getRoomDetail(roomNo); 
        request.setAttribute("floor", rd.getFloorNo());
        request.setAttribute("price", rd.getRoomPrice());
        request.setAttribute("occ", rd.getOccupancy());
        request.setAttribute("type", rd.getRoomTypeName());
        request.setAttribute("img", rd.getRoomImg());
        
//        List<Comment> list = dao.getComment(roomNo);
//        
//        request.setAttribute("list", list);
//        String cm = request.getParameter("txtComment");
//        int iduser= 2; //chua dang nhap duowc nen chau biet lay id o dau ae getParameter gium voi  
//        dao.pushCommentToDB(cm, iduser);        
        request.getRequestDispatcher("RoomDetail.jsp").forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
