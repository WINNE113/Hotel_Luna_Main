package Service;

import Service.*;
import Entity.Guest;
import Repository.CustomerDao;

/**
 *
 * @author ASUS-PRO
 */
public class Login_ServiceImpl implements Login_Service {

    private CustomerDao dao;

    public Login_ServiceImpl() {
        this.dao = new CustomerDao();
    }

    @Override
    public Guest loginAcc(String email, String pass) {
        return dao.loginAcc(email, pass);
    }

    @Override
    public Guest checkEmailExit(String email) {
        System.out.println("Come in dao");
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
