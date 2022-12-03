
package Dao;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Entity.Room;


public class RoomDAO1 {
    
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    
    public List<Room> getAllRoom() {
        ArrayList<Room> list = new ArrayList<>();
        String query = "SELECT * FROM Room";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6)
                        ));
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public List<Room> getRoomByCategoryID(String id) {
        List<Room> list = new ArrayList<>();
        String query = "SELECT * FROM Room\n"
                + "where categoryId = ?";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            con.close();
            
        } catch (Exception e) {
        }
        return list;
    }
    
    public Room getRoomById(String id) {
        String query = "SELECT * FROM Room\n"
                + "where id = ?";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6)
                        );
            }
        } catch (Exception e) {
        }
        return null;
    }
    
 
    
    public void deleteRoom(String id) {
        String query = "delete from Room\n"
                + " where id=?";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            con.close();
            ps.close();
        } catch (Exception e) {
        }
    }

    
    public void insertRoom(String name,String categoryID,String price,String images,String description,String quantity) {
        String query = "INSERT INTO Room(name,categoryID,price,images,description,quantity) VALUES(?,?,?,?,?,?)";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, categoryID);
            ps.setString(3, price);
            ps.setString(4, images);
            ps.setString(5, description);
            ps.setString(6, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void updateRoom(String name, String categoryID, String price, String images, String description, String id) {
        String query = "UPDATE Room\n"
                + "set name=?, categoryID=?, price=?, images=?,description=? where id=?";
        
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, categoryID);
            ps.setString(3, price);
            ps.setString(4, images);
            ps.setString(5, description);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
   
    
    public static void main(String[] args) {
        RoomDAO1 p = new RoomDAO1();
        List<Room> list = new ArrayList<>();
        list = p.getAllRoom();
        for (Room product : list) {
            System.out.println(product);
        }
        
    }
    
}
