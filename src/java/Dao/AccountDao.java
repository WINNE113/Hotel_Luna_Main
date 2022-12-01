/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Context.DBContext;
import Entites.web.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS-PRO
 */
public class AccountDao {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public Account login(String user, String pass) {
        String query = "select * from Account\n"
                + "where username = ?\n"
                + "and pass = ?";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
            con.close();
            ps.close();
        } catch (Exception e) {
        }
        return null;
    }

    public Account chechAccountExist(String user) {
        String query = "select * from Account\n"
                + "where username = ?\n";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
            con.close();
            ps.close();
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String query = "insert into Account values(?,?,0)";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
            con.close();
            ps.close();
        } catch (Exception e) {
        }
    }

    public void Update(String pass) {
        String query = "update Account\n"
                + "set pass=? where id=7";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, pass);
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();

        String query = "SELECT * FROM Account";
        try {
            con = DBContext.getDBContext();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteAccount(String id) {
        String query = "DELETE from Account\n"
                + " WHERE id=?";
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
}
