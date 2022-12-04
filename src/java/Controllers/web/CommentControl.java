/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.RoomController;

import Repositories.RoomRepository.RoomDetailDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ndatw
 */
@WebServlet(name = "CommentControl", urlPatterns = {"/commentcontrol"})
public class CommentControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cmt = request.getParameter("txtComment");
        String[] rate = request.getParameterValues("rating");
        RoomDetailDao dao = new RoomDetailDao();
        System.out.println(cmt);
        System.out.println(rate.length);
        dao.pushCommentToDB(cmt, rate.length, 222);

    }
}
