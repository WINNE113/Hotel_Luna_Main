/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

import Entites.web.Guest;

/**
 *
 * @author ASUS-PRO
 */
public interface ILoginService {
    
    public Guest loginAcc(String email, String pass);

    public Guest checkEmailExit(String email);

    public Guest checkPhoneExit(String phone);

    public void signUp(String firstName, String lastName, String email, String phone, String pass);
    
    public String getPassWordByEmail(String email);
    
}
