package Service;

import Entity.Guest;

/**
 *
 * @author ASUS-PRO
 */
public interface Login_Service {

    public Guest loginAcc(String email, String pass);

    public Guest checkEmailExit(String email);

    public Guest checkPhoneExit(String phone);

    public void signUp(String firstName, String lastName, String email, String phone, String pass);
    
    public String getPassWordByEmail(String email);
}
