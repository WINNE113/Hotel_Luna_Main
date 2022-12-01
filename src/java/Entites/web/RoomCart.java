/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entites.web;

/**
 *
 * @author ASUS-PRO
 */
public class RoomCart {

    private RoomDetail roomDetail;
    private InfBooking infBooking;

    public RoomCart() {
    }

    public RoomCart(RoomDetail roomDetail, InfBooking infBooking) {
        this.roomDetail = roomDetail;
        this.infBooking = infBooking;
    }

    public RoomDetail getRoomDetail() {
        return roomDetail;
    }

    public void setRoomDetail(RoomDetail roomDetail) {
        this.roomDetail = roomDetail;
    }

    public InfBooking getInfBooking() {
        return infBooking;
    }

    public void setInfBooking(InfBooking infBooking) {
        this.infBooking = infBooking;
    }

}
