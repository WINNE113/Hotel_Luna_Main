
package Dao;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Entity.Events;


public class EventsDAO {
    
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<Events> getAllEvents(){
        List<Events> list = new ArrayList<>();
        
        String query = "select * from Events";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Events(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getFloat(5)));
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }
    
        public void insertEvents(String title,String images,String details) {
        String query = "INSERT INTO Events(title,images,details) VALUES(?,?,?)";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,title);
            ps.setString(2,images);
            ps.setString(3,details);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
