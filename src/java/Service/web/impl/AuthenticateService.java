package Service.web.impl;

import Entites.web.EmployeeEntity;
import Entites.web.GuestEntity;
import Dao.EmployeeRepository;
import Dao.GuestRepository;

import java.util.List;

public class AuthenticateService {
    private GuestRepository guestRepository = new GuestRepository();
    private EmployeeRepository employeeRepository = new EmployeeRepository();

    public boolean checkLogin(String email, String password) {
        List<GuestEntity> guests = guestRepository.getGuestByEmailAndPassword(email, password);
        List<EmployeeEntity> employees = employeeRepository.getEmployeeByEmailAndPassword(email, password);

        if (employees.size() > 0 || guests.size() > 0) {
            return true;
        }
        return false;
    }

    public boolean checkEmailExist(String email) {
        GuestEntity guest = guestRepository.getGuestByEmail(email);
        if (guest == null) return true;
        return false;
    }

    public boolean checkSignup(GuestEntity guest) {
        try {
            guestRepository.insertGuest(guest);
            return true;
        } catch (Exception e) {
            return false;
        }
    }



}
