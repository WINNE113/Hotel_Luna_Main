/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

import Entites.web.RoomDetail;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS-PRO
 */
public interface IRoomService {

    public List<RoomDetail> listRoom();

    public Map<Integer, List<RoomDetail>> listRoomByPlace(String cityId);

    public List<RoomDetail> listRoomByPrice(int price, int toPrice);

    public List<RoomDetail> listRoomByRoomType(String roomType);

    public List<RoomDetail> listRoomByTwoRoomType(String roomType, String roomType2);

    public List<RoomDetail> listRoomByThreeRoomType(String roomType, String roomType2, String roomType3);

    public List<RoomDetail> listRoomByFourRoomType(String roomType, String roomType2, String roomType3, String roomType4);

    public List<RoomDetail> listRoomByBedType(String bedType);

    public List<RoomDetail> listRoomByTwoBedType(String bedType, String bedType2);

    public List<RoomDetail> listRoomByThreeBedType(String bedType, String bedType2, String bedType3);

    public RoomDetail getRoomById(int id);

}
