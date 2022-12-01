/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

import Entites.web.RoomDetail;
import java.util.List;

/**
 *
 * @author ASUS-PRO
 */
public interface IHomeService {

    public List<RoomDetail> getTop4Room();
    
}
