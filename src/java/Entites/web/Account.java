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
public class Account {

    private int id;
    private String username;
    private String pass;
    private int isAdmin;

    public Account() {
    }

    public Account(int id, String username, String pass, int isAdmin) {
        this.id = id;
        this.username = username;
        this.pass = pass;
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", pass=" + pass + ", isAdmin=" + isAdmin + '}';
    }
    
}
