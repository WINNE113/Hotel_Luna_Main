/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entites.web.RoomCart;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import static java.time.temporal.ChronoUnit.DAYS;
import java.util.Map;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS-PRO
 */
public class Demo {

    public static void main(String[] args) {
        LocalDate date = LocalDate.now();
        System.out.println(date);
        LocalDate futureDate = LocalDate.now().plusMonths(1);
        System.out.println(futureDate);

        System.out.println("Day of mounth: " + date.getDayOfMonth());

        LocalDate dateBefore = LocalDate.parse("2022-11-30");
        LocalDate dateAfter = LocalDate.parse("2022-12-02");

        long daysBetween = 0;
        daysBetween = DAYS.between(dateBefore, dateAfter);
        System.out.println("day between: " + daysBetween);
        ServletRequest request = null;
        HttpServletRequest servletRequest = (HttpServletRequest)request;
        HttpSession session = servletRequest.getSession();
    }

}
