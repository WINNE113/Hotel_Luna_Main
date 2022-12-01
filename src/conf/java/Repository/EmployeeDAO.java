/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repository;

import Context.DBContext_Singleton;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Entity.Employee;


public class EmployeeDAO {
    
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<Employee> getAllEmployee(){
        List<Employee> list = new ArrayList<>();
        
        String query = "SELECT * FROM Employee";
        try {
            con = DBContext_Singleton.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Employee(rs.getInt(1), rs.getString(2)));
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }
    public void insertEmployee(String name) {
        String query = "INSERT INTO Employee(name) VALUES(?)";
        try {
            con = DBContext_Singleton.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
