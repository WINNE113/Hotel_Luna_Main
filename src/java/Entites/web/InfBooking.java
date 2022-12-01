/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entites.web;

import java.sql.Time;
import java.time.LocalDate;

/**
 *
 * @author ASUS-PRO
 */
public class InfBooking {

    private int numOfAdults;
    private int numOfChildren;
    private LocalDate dayCheckIn;
    private LocalDate dayCheckOut;
    private Time timeCheckIn;
    private Time timeCheckOut;

    public InfBooking() {
    }

    public InfBooking(int numOfAdults, int numOfChildren, LocalDate dayCheckIn, LocalDate dayCheckOut, Time timeCheckIn, Time timeCheckOut) {
        this.numOfAdults = numOfAdults;
        this.numOfChildren = numOfChildren;
        this.dayCheckIn = dayCheckIn;
        this.dayCheckOut = dayCheckOut;
        this.timeCheckIn = timeCheckIn;
        this.timeCheckOut = timeCheckOut;
    }

    public int getNumOfAdults() {
        return numOfAdults;
    }

    public void setNumOfAdults(int numOfAdults) {
        this.numOfAdults = numOfAdults;
    }

    public int getNumOfChildren() {
        return numOfChildren;
    }

    public void setNumOfChildren(int numOfChildren) {
        this.numOfChildren = numOfChildren;
    }

    public LocalDate getDayCheckIn() {
        return dayCheckIn;
    }

    public void setDayCheckIn(LocalDate dayCheckIn) {
        this.dayCheckIn = dayCheckIn;
    }

    public LocalDate getDayCheckOut() {
        return dayCheckOut;
    }

    public void setDayCheckOut(LocalDate dayCheckOut) {
        this.dayCheckOut = dayCheckOut;
    }

    public Time getTimeCheckIn() {
        return timeCheckIn;
    }

    public void setTimeCheckIn(Time timeCheckIn) {
        this.timeCheckIn = timeCheckIn;
    }

    public Time getTimeCheckOut() {
        return timeCheckOut;
    }

    public void setTimeCheckOut(Time timeCheckOut) {
        this.timeCheckOut = timeCheckOut;
    }

    @Override
    public String toString() {
        return "InfBooking{" + "numOfAdults=" + numOfAdults + ", numOfChildren=" + numOfChildren + ", dayCheckIn=" + dayCheckIn + ", dayCheckOut=" + dayCheckOut + ", timeCheckIn=" + timeCheckIn + ", timeCheckOut=" + timeCheckOut + '}';
    }
    
}
