package Dao;

import Context.DBContext;
import Entites.web.GuestEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GuestRepository {
    public List<GuestEntity> getGuestByEmailAndPassword(String email, String password) {
        List<GuestEntity> list = new ArrayList<>();
        try {
            String query = "Select*from Guest where Email= ? and GuestPassword=?";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                GuestEntity guest = new GuestEntity();
                //FirstName, LastName, DOB, Gen, PhoneGuestNo, Email, GuestPassword, PassportNo, GuestAddress, IsMemberShip)
                guest.setGuestID(resultSet.getInt("GuestID"));
                guest.setFirstName(resultSet.getString("FirstName"));
                guest.setLastName(resultSet.getString("LastName"));
                guest.setDob(resultSet.getString("DOB"));
                guest.setGender(resultSet.getString("Gen"));
                guest.setPhoneNumber(resultSet.getString("PhoneGuestNo"));
                guest.setEmail(resultSet.getString("Email"));
                guest.setPassword(resultSet.getString("GuestPassword"));
                guest.setPassport(resultSet.getString("PassportNo"));
                guest.setAddress(resultSet.getString("GuestAddress"));
                guest.setCheckMemberShip(resultSet.getBoolean("IsMemberShip"));

                list.add(guest);
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getGuestByEmailAndPassword " + e.getMessage());
        }

        return list;
    }

    public List<GuestEntity> getAllGuest() {
        List<GuestEntity> list = new ArrayList<>();
        try {
            String query = "Select*from Guest";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                GuestEntity guest = new GuestEntity();
                guest.setGuestID(resultSet.getInt("GuestID"));
                guest.setFirstName(resultSet.getString("FirstName"));
                guest.setLastName(resultSet.getString("LastName"));
                guest.setDob(resultSet.getString("DOB"));
                guest.setGender(resultSet.getString("Gen"));
                guest.setPhoneNumber(resultSet.getString("PhoneGuestNo"));
                guest.setEmail(resultSet.getString("Email"));
                guest.setPassword(resultSet.getString("GuestPassword"));
                guest.setPassport(resultSet.getString("PassportNo"));
                guest.setAddress(resultSet.getString("GuestAddress"));
                guest.setCheckMemberShip(resultSet.getBoolean("IsMemberShip"));

                list.add(guest);
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getAllGuest " + e.getMessage());
        }

        return list;
    }

    public GuestEntity getGuestByEmail(String email) {
        GuestEntity guest = new GuestEntity();
        try {
            String query = "select * from Guest where Email =?";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                guest.setGuestID(resultSet.getInt("GuestID"));
                guest.setFirstName(resultSet.getString("FirstName"));
                guest.setLastName(resultSet.getString("LastName"));
                guest.setDob(resultSet.getString("DOB"));
                guest.setGender(resultSet.getString("Gen"));
                guest.setPhoneNumber(resultSet.getString("PhoneGuestNo"));
                guest.setEmail(email);
                guest.setPassword(resultSet.getString("GuestPassword"));
                guest.setPassport(resultSet.getString("PassportNo"));
                guest.setAddress(resultSet.getString("GuestAddress"));
                guest.setCheckMemberShip(resultSet.getBoolean("IsMemberShip"));
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getGuestByEmail " + e.getMessage());
        }

        return guest;
    }

    public void insertGuest(GuestEntity guest) {
        try {
            String query = "INSERT INTO Guest(FirstName, LastName, DOB, Gen, PhoneGuestNo, Email, GuestPassword, PassportNo, GuestAddress) Values (?,?,?,?,?,?,?,?,?)";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, guest.getFirstName());
            preparedStatement.setString(2, guest.getLastName());
            preparedStatement.setString(3, guest.getDob());
            preparedStatement.setString(4, guest.getGender());
            preparedStatement.setString(5, guest.getPhoneNumber());
            preparedStatement.setString(6, guest.getEmail());
            preparedStatement.setString(7, guest.getPassport());
            preparedStatement.setString(8, guest.getPassport());
            preparedStatement.setString(9, guest.getAddress());

            preparedStatement.executeUpdate();

            connection.close();

        } catch (Exception e) {
            System.out.println("Error insertGuest " + e.getMessage());
        }
    }
}
