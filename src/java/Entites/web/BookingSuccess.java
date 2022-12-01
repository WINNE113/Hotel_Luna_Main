/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entites.web;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author ASUS-PRO
 */
public class BookingSuccess {
    private int booKingId;
    private int roomNo;
    private String hotelCode;
    private Time timeCheckOut;
    private Date dayCheckOut;
    private int bookingStatus;

    public BookingSuccess() {
    }

    public BookingSuccess(int booKingId, int roomNo, String hotelCode, Time timeCheckOut, Date dayCheckOut, int bookingStatus) {
        this.booKingId = booKingId;
        this.roomNo = roomNo;
        this.hotelCode = hotelCode;
        this.timeCheckOut = timeCheckOut;
        this.dayCheckOut = dayCheckOut;
        this.bookingStatus = bookingStatus;
    }

    public int getBooKingId() {
        return booKingId;
    }

    public void setBooKingId(int booKingId) {
        this.booKingId = booKingId;
    }

    public int getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(int roomNo) {
        this.roomNo = roomNo;
    }

    public String getHotelCode() {
        return hotelCode;
    }

    public void setHotelCode(String hotelCode) {
        this.hotelCode = hotelCode;
    }

    public Time getTimeCheckOut() {
        return timeCheckOut;
    }

    public void setTimeCheckOut(Time timeCheckOut) {
        this.timeCheckOut = timeCheckOut;
    }

    public Date getDayCheckOut() {
        return dayCheckOut;
    }

    public void setDayCheckOut(Date dayCheckOut) {
        this.dayCheckOut = dayCheckOut;
    }

    public int getBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(int bookingStatus) {
        this.bookingStatus = bookingStatus;
    }
    
    
}
