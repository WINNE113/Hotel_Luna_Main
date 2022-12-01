/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web.impl;

import Dao.GuestDao;
import Entites.web.Guest;
import Service.web.ILoginService;

/**
 *
 * @author ASUS-PRO
 */
public class LoginService implements ILoginService {

    private GuestDao dao;

    public LoginService() {
        this.dao = new GuestDao();
    }

    @Override
    public Guest loginAcc(String email, String pass) {
        return dao.loginAcc(email, pass);
    }

    @Override
    public Guest checkEmailExit(String email) {
        return dao.CheckEmailExit(email);
    }

    @Override
    public Guest checkPhoneExit(String phone) {
        return dao.checkPhoneExit(phone);
    }

    @Override
    public void signUp(String firstName, String lastName, String email, String phone, String pass) {
        dao.signUp(firstName, lastName, email, phone, pass);
    }

    @Override
    public String getPassWordByEmail(String email) {
        return dao.getPassWordByEmail(email);
    }

}
