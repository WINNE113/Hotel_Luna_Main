/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web.impl;

import Dao.RoomDao;
import Entites.web.BookingSuccess;
import Service.web.ICheckOutService;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;

/**
 *
 * @author ASUS-PRO
 */
public class CheckOutService implements ICheckOutService {

    private RoomDao roomDao;

    public CheckOutService() {
        roomDao = new RoomDao();
    }

    @Override
    public BookingSuccess checkRoomAvailability(int roomId) {
        return roomDao.checkRoomAvailability(roomId);
    }

    @Override
    public int insertToBooking(int guestId, int bookingStatus, double totalPrice, String fullName, String email, String phone, String address) {
        return roomDao.insertToBooking(guestId, bookingStatus, totalPrice, fullName, email, phone, address);
    }

    @Override
    public void insertToBookingDetail(int bookingId, int roomNo, Date checkInDate, Date checkOutDate, Time checkIntime, Time checkOutTime, int numOfAdults, int numOfChildren, double price, double totalPrice) {
        roomDao.insertToBookingDetail(bookingId, roomNo, checkInDate, checkOutDate, checkIntime, checkOutTime, numOfAdults, numOfChildren, price, totalPrice);
    }
}
