/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Context.DBContext;
import Entites.web.Guest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS-PRO
 */
public class GuestDao {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public Guest CheckEmailExit(String email) {
        String query = "select * From [Guest] where email = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Guest(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getBoolean(11));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
//
        return null;
    }

    public String getPassWordByEmail(String email) {
        String query = "Select GuestPassword from [Guest] where email = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            String passWord = null;
            while (rs.next()) {
                passWord = rs.getString(1);
            }
            return passWord;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }

        return null;
    }

    public Guest loginAcc(String email, String pass) {
        String query = "Select * from guest where Email = ? and GuestPassword = ?";

        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Guest(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getBoolean(11)
                );
            }
        } catch (SQLException ex) {
            System.out.println("ex: " + ex);
        }
        return null;
    }

    public void signUp(String firstName, String lastName, String email, String phone, String pass) {
        String query = "INSERT INTO Guest(FirstName, LastName, Email, PhoneGuestNo, GuestPassword)\n"
                + "VALUES (? , ? , ? , ? , ?); ";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);

            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, pass);

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(" " + e);
        }
    }

    public Guest checkPhoneExit(String phone) {
        String query = "select * From [Guest] where PhoneGuestNo = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Guest(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getBoolean(11));
            }
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public static void main(String[] args) {

    }

}
