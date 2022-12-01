/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

/**
 *
 * @author ASUS-PRO
 */
public interface ISendEmail {

    public void send(String to, String sub, String msg, final String user, final String pass);

}
