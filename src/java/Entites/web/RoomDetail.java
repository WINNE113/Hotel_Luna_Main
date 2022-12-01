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
public class RoomDetail {
    private int roomId;
    private String cityName;
    private String hotelAddress;
    private String roomTypeName;
    private double roomPrice;
    private String roomImg;
    private String roomRateDesc;

    public RoomDetail() {
    }
    
    public RoomDetail(int roomId, String cityName, String hotelAddress, String roomTypeName, double roomPrice, String roomImg, String roomRateDesc) {
        this.roomId = roomId;
        this.cityName = cityName;
        this.hotelAddress = hotelAddress;
        this.roomTypeName = roomTypeName;
        this.roomPrice = roomPrice;
        this.roomImg = roomImg;
        this.roomRateDesc = roomRateDesc;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }
    
    
    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getHotelAddress() {
        return hotelAddress;
    }

    public void setHotelAddress(String hotelAddress) {
        this.hotelAddress = hotelAddress;
    }

    public String getRoomTypeName() {
        return roomTypeName;
    }

    public void setRoomTypeName(String roomTypeName) {
        this.roomTypeName = roomTypeName;
    }

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getRoomImg() {
        return roomImg;
    }

    public void setRoomImg(String roomImg) {
        this.roomImg = roomImg;
    }

    public String getRoomRateDesc() {
        return roomRateDesc;
    }

    public void setRoomRateDesc(String roomRateDesc) {
        this.roomRateDesc = roomRateDesc;
    }

    public int totalResult() {
        int result = +1;
        return result;

    }

    @Override
    public String toString() {
        return "RoomDetail{" + "cityName=" + cityName + ", hotelAddress=" + hotelAddress + ", roomTypeName=" + roomTypeName + ", roomPrice=" + roomPrice + ", roomImg=" + roomImg + ", roomRateDesc=" + roomRateDesc + '}';
    }

}
