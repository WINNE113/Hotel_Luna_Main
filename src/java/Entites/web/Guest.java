/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entites.web;

import java.sql.Date;

/**
 *
 * @author ASUS-PRO
 */
public class Guest {

    private String guestId;
    private String firstName;
    private String lastName;
    private Date dob;
    private String gen;
    private int phone;
    private String email;
    private String passWord;
    private int passPortNo;
    private String address;
    private Boolean isMemberShip;

    public Guest() {
    }

    public Guest(String guestId, String firstName, String lastName, Date dob, String gen, int phone, String email, String passWord, int passPortNo, String address, Boolean isMemberShip) {
        this.guestId = guestId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.gen = gen;
        this.phone = phone;
        this.email = email;
        this.passWord = passWord;
        this.passPortNo = passPortNo;
        this.address = address;
        this.isMemberShip = isMemberShip;
    }

    public String getGuestId() {
        return guestId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getPassPortNo() {
        return passPortNo;
    }

    public void setPassPortNo(int passPortNo) {
        this.passPortNo = passPortNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Boolean getIsMemberShip() {
        return isMemberShip;
    }

    public void setIsMemberShip(Boolean isMemberShip) {
        this.isMemberShip = isMemberShip;
    }

}
