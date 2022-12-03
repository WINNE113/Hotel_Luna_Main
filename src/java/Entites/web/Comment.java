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
public class Comment {

    private int RoomRateID;
    private int StarRating;
    private String RoomComment;
    private String GuestID;
    private String GuestFullName;
    private int RoomNo;

    public Comment() {
    }

    public Comment(int RoomRateID, int StarRating, String RoomComment, String GuestID, String GuestFullName, int RoomNo) {
        this.RoomRateID = RoomRateID;
        this.StarRating = StarRating;
        this.RoomComment = RoomComment;
        this.GuestID = GuestID;
        this.GuestFullName = GuestFullName;
        this.RoomNo = RoomNo;
    }

    public int getRoomRateID() {
        return RoomRateID;
    }

    public void setRoomRateID(int RoomRateID) {
        this.RoomRateID = RoomRateID;
    }

    public int getStarRating() {
        return StarRating;
    }

    public void setStarRating(int StarRating) {
        this.StarRating = StarRating;
    }

    public String getRoomComment() {
        return RoomComment;
    }

    public void setRoomComment(String RoomComment) {
        this.RoomComment = RoomComment;
    }

    public String getGuestID() {
        return GuestID;
    }

    public void setGuestID(String GuestID) {
        this.GuestID = GuestID;
    }

    public String getGuestFullName() {
        return GuestFullName;
    }

    public void setGuestFullName(String GuestFullName) {
        this.GuestFullName = GuestFullName;
    }

    public int getRoomNo() {
        return RoomNo;
    }

    public void setRoomNo(int RoomNo) {
        this.RoomNo = RoomNo;
    }

    @Override
    public String toString() {
        return "Comment{" + "RoomRateID=" + RoomRateID + ", StarRating=" + StarRating + ", RoomComment=" + RoomComment + ", GuestID=" + GuestID + ", GuestFullName=" + GuestFullName + ", RoomNo=" + RoomNo + '}';
    }
    
    
}
