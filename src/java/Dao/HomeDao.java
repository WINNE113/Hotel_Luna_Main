/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Context.DBContext;
import Entites.web.RoomDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS-PRO
 */
public class HomeDao {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public List<RoomDetail> getTop4Room() {
        String query = "select top 4 r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr\n"
                + "where c.CityID = h.CityID and h.HotelCode = r.HotelCode and r.RoomTypeName = rt.RoomTypeName \n"
                + "and r.RoomRateID = rr.RoomRateID";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<RoomDetail> list = new ArrayList<>();
            while (rs.next()) {
                RoomDetail detail = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                list.add(detail);
            }
            return list;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }
}
