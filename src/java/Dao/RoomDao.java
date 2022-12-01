/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Context.DBContext;
import Entites.web.BookingSuccess;
import Entites.web.RoomDetail;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS-PRO
 */
public class RoomDao {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<RoomDetail> listRoomHighRate() {
        String query = "select distinct top 5 r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + "where rs.RoomStatusDesc = 'AVAILABLE' and rr.RoomRateID = '3'";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (Exception e) {
            return null;
        }
    }

    public Map<Integer, List<RoomDetail>> listRoomByPlace(String cityId) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  c.CityID = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, cityId);
            rs = ps.executeQuery();
            Map<Integer, List<RoomDetail>> map = new HashMap<>();
            List<RoomDetail> listRoom = new ArrayList<>();
            int totalResult = 0;       // Total result
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
                totalResult++;
            }
            map.put(totalResult, listRoom);
            return map;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByRoomType(String roomType) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.RoomTypeName like ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, roomType);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByPrice(int price, int toPrice) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.RoomPrice Between ? and ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, price);
            ps.setInt(2, toPrice);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByBedType(String bedType) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.BedType = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, bedType);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByTwoRoomType(String roomType, String roomType2) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.RoomTypeName in (? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, roomType);
            ps.setString(2, roomType2);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByThreeRoomType(String roomType, String roomType2, String roomType3) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.RoomTypeName in (? , ? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);

            ps.setString(1, roomType);
            ps.setString(2, roomType2);
            ps.setString(3, roomType3);

            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByFourRoomType(String roomType, String roomType2, String roomType3, String roomType4) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and  rt.RoomTypeName in (? , ? , ? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);

            ps.setString(1, roomType);

            ps.setString(2, roomType2);

            ps.setString(3, roomType3);

            ps.setString(4, roomType4);

            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByTwoBedType(String bedType, String bedType2) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and rt.BedType in (? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);

            ps.setString(1, bedType);
            ps.setString(2, bedType2);

            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByThreeBedType(String bedType, String bedType2, String bedType3) {
        String query = "select r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + " where rs.RoomStatusDesc = 'AVAILABLE' and rt.BedType in (? , ? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);

            ps.setString(1, bedType);

            ps.setString(2, bedType2);

            ps.setString(3, bedType3);

            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public RoomDetail checkRoomById(int id) {
        String query = "select distinct r.RoomNo, c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc, rs.RoomStatusDesc\n"
                + "from City as c  join Hotel as h on c.CityID = h.CityID join Room as r on h.HotelCode = r.HotelCode join RoomType as rt on rt.RoomTypeName = r.RoomTypeName\n"
                + "join RoomStatus as rs on r.RoomStatusID = rs.RoomStatusID join RoomRate as rr on rr.RoomRateID = r.RoomRateID\n"
                + "where r.RoomNo = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new RoomDetail(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public BookingSuccess checkRoomAvailability(int roomId) {
        String query = "select top 1 b.BookingID, r.RoomNo, r.HotelCode, bd.CheckOutTime, bd.CheckOutDate, b.BookingStatusID \n"
                + "from Room as r join BookingDetail as bd on r.RoomNo = bd.RoomNo join Booking as b on b.BookingID = bd.BookingID where r.RoomNo = ?  and b.BookingStatusID = 1\n"
                + "order by bd.CheckOutDate desc";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, roomId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new BookingSuccess(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getTime(4),
                        rs.getDate(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public static void main(String[] args) {
        RoomDao dao = new RoomDao();
        BookingSuccess success = dao.checkRoomAvailability(3);
        if (success != null) {
            System.out.println(success.getBooKingId());
        }
    }

    public int insertToBooking(int guestId, int bookingStatus, double totalPrice, String fullName, String email, String phone, String address) {
        String query = "insert into BooKing( [GuestID]\n"
                + "      ,[BookingStatusID]\n"
                + "      ,[TotalPrice]\n"
                + "      ,[FullName]\n"
                + "      ,[Email]\n"
                + "      ,[PhoneNumber]\n"
                + "      ,[Address] )\n"
                + "values( ?, ? , ? , ? , ? , ? , ? )";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, guestId);
            ps.setInt(2, bookingStatus);
            ps.setDouble(3, totalPrice);
            ps.setString(4, fullName);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setString(7, address);

            ps.executeUpdate();

            //return BookingId
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void insertToBookingDetail(int bookingId, int roomNo, Date checkInDate, Date checkOutDate, Time checkIntime, Time checkOutTime, int numOfAdults, int numOfChildren, double price, double totalPrice) {
        String query = "insert into BookingDetail(\n"
                + "       [BookingId]\n"
                + "      ,[RoomNo]\n"
                + "      ,[BookingDate]\n"
                + "      ,[CheckOutDate]\n"
                + "      ,[BookingTime]\n"
                + "      ,[CheckOutTime]\n"
                + "      ,[NumOfAdults]\n"
                + "      ,[NumOfChildrent]\n"
                + "      ,[Price]\n"
                + "      ,[totalPrice] )\n"
                + "values(? , ? , ? , ? , ? , ? , ? , ? , ? , ? )";

        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, bookingId);
            ps.setInt(2, roomNo);
            ps.setDate(3, checkInDate);
            ps.setDate(4, checkOutDate);
            ps.setTime(5, checkIntime);
            ps.setTime(6, checkOutTime);
            ps.setInt(7, numOfAdults);
            ps.setInt(8, numOfChildren);
            ps.setDouble(9, price);
            ps.setDouble(10, totalPrice);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
