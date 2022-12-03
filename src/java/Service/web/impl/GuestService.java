package Service.web.impl;

import Entites.web.EmployeeEntity;
import Entites.web.GuestEntity;
import Dao.GuestRepository;

public class GuestService {
    private GuestRepository guestRepository = new GuestRepository();

    public GuestEntity getGuestByEmail(String email) {
        return guestRepository.getGuestByEmail(email);
    }

}
