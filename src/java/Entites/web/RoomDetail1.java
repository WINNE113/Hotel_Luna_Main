/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entites.web;

/**
 *
 * @author ndatw
 */
public class RoomDetail1 {
    private int RoomNo;
    private String RoomTypeName;
    private float RoomPrice;
    private String RoomImg;
    private String RoomDesc;
    private int Occupancy;
    private int FloorNo;

    public RoomDetail1() {
    }

    public RoomDetail1(int RoomNo, String RoomTypeName, float RoomPrice, String RoomImg, String RoomDesc, int Occupancy, int FloorNo) {
        this.RoomNo = RoomNo;
        this.RoomTypeName = RoomTypeName;
        this.RoomPrice = RoomPrice;
        this.RoomImg = RoomImg;
        this.RoomDesc = RoomDesc;
        this.Occupancy = Occupancy;
        this.FloorNo = FloorNo;
    }

    public int getRoomNo() {
        return RoomNo;
    }

    public void setRoomNo(int RoomNo) {
        this.RoomNo = RoomNo;
    }

    public String getRoomTypeName() {
        return RoomTypeName;
    }

    public void setRoomTypeName(String RoomTypeName) {
        this.RoomTypeName = RoomTypeName;
    }

    public float getRoomPrice() {
        return RoomPrice;
    }

    public void setRoomPrice(float RoomPrice) {
        this.RoomPrice = RoomPrice;
    }

    public String getRoomImg() {
        return RoomImg;
    }

    public void setRoomImg(String RoomImg) {
        this.RoomImg = RoomImg;
    }

    public String getRoomDesc() {
        return RoomDesc;
    }

    public void setRoomDesc(String RoomDesc) {
        this.RoomDesc = RoomDesc;
    }

    public int getOccupancy() {
        return Occupancy;
    }

    public void setOccupancy(int Occupancy) {
        this.Occupancy = Occupancy;
    }

    public int getFloorNo() {
        return FloorNo;
    }

    public void setFloorNo(int FloorNo) {
        this.FloorNo = FloorNo;
    }

    @Override
    public String toString() {
        return "RoomDetail{" + "RoomNo=" + RoomNo + ", RoomTypeName=" + RoomTypeName + ", RoomPrice=" + RoomPrice + ", RoomImg=" + RoomImg + ", RoomDesc=" + RoomDesc + ", Occupancy=" + Occupancy + ", FloorNo=" + FloorNo + '}';
    }

    
    
}
