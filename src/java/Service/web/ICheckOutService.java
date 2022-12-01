/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

import Entites.web.BookingSuccess;
import java.sql.Date;
import java.sql.Time;
/**
 *
 * @author ASUS-PRO
 */
public interface ICheckOutService {

    public BookingSuccess checkRoomAvailability(int roomId);

    public int insertToBooking(int guestId, int bookingStatus, double totalPrice, String fullName, String email, String phone, String address);

    public void insertToBookingDetail(int bookingId, int roomNo, Date checkInDate, Date checkOutDate, Time checkIntime, Time checkOutTime, int numOfAdults, int numOfChildren, double price, double totalPrice);

}
