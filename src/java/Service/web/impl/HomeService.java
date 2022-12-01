/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web.impl;

import Dao.HomeDao;
import Entites.web.RoomDetail;
import Service.web.IHomeService;
import java.util.List;

/**
 *
 * @author ASUS-PRO
 */
public class HomeService implements IHomeService {

    private HomeDao homeDao;

    public HomeService() {
        homeDao = new HomeDao();
    }

    @Override
    public List<RoomDetail> getTop4Room() {
        return homeDao.getTop4Room();
    }

    public static void main(String[] args) {
        HomeService homeService = new HomeService();
        List<RoomDetail> list = homeService.getTop4Room();
        for (RoomDetail item : list) {
            System.out.println("Items: " + list.toString());
        }
    }

}
