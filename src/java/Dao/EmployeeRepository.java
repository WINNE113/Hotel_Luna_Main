package Dao;

import Context.DBContext;
import Entites.web.EmployeeEntity;
import Entites.web.GuestEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository {
    public List<EmployeeEntity> getEmployeeByEmailAndPassword(String email, String password) {
        List<EmployeeEntity> list = new ArrayList<>();
        try {
            String query = "Select*from Employee where Email= ? and EmployeePassword=?;";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                EmployeeEntity employee = new EmployeeEntity();
                employee.setEmployeeID(resultSet.getInt("EmployeeID"));
                employee.setFirstName(resultSet.getString("FirstName"));
                employee.setLastName(resultSet.getString("LastName"));
                employee.setDob(resultSet.getString("DOB"));
                employee.setGender(resultSet.getString("Gender"));
                employee.setPhoneNumber(resultSet.getString("PhoneNo"));
                employee.setEmail(resultSet.getString("Email"));
                employee.setPassword(resultSet.getString("EmployeePassword"));
                employee.setSalary(resultSet.getInt("Salary"));
                employee.setDateCreated(resultSet.getString("CreatedTime"));
                employee.setDateUpdated(resultSet.getString("UpdatedTime"));
                employee.setHotelID(resultSet.getString("HotelCode"));
                employee.setRoleID(resultSet.getString("RoleID"));

                list.add(employee);
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getEmployeeByEmailAndPassword " + e.getMessage());
        }

        return list;
    }

    public List<EmployeeEntity> getAllEmployees() {
        List<EmployeeEntity> list = new ArrayList<>();
        try {
            String query = "Select*from Employee";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                EmployeeEntity employee = new EmployeeEntity();
                employee.setEmployeeID(resultSet.getInt("EmployeeID"));
                employee.setFirstName(resultSet.getString("FirstName"));
                employee.setLastName(resultSet.getString("LastName"));
                employee.setDob(resultSet.getString("DOB"));
                employee.setGender(resultSet.getString("Gender"));
                employee.setPhoneNumber(resultSet.getString("PhoneNo"));
                employee.setEmail(resultSet.getString("Email"));
                employee.setPassword(resultSet.getString("EmployeePassword"));
                employee.setSalary(resultSet.getInt("Salary"));
                employee.setDateCreated(resultSet.getString("CreatedTime"));
                employee.setDateUpdated(resultSet.getString("UpdatedTime"));
                employee.setHotelID(resultSet.getString("HotelCode"));
                employee.setRoleID(resultSet.getString("RoleID"));

                list.add(employee);
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getEmployeeByEmailAndPassword " + e.getMessage());
        }

        return list;
    }
    public EmployeeEntity getEmployeeByEmail(String email) {
        EmployeeEntity employee = new EmployeeEntity();
        try {
            String query = "Select e.*, er.RoleTitle as 'roleName' from Employee e, EmployeeRole er  where e.RoleID=er.RoleID and e.Email=?";
            Connection connection = DBContext.getDBContext();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                employee.setEmployeeID(resultSet.getInt("EmployeeID"));
                employee.setFirstName(resultSet.getString("FirstName"));
                employee.setLastName(resultSet.getString("LastName"));
                employee.setDob(resultSet.getString("DOB"));
                employee.setGender(resultSet.getString("Gender"));
                employee.setPhoneNumber(resultSet.getString("PhoneNo"));
                employee.setEmail(email);
                employee.setPassword(resultSet.getString("EmployeePassword"));
                employee.setSalary(resultSet.getInt("Salary"));
                employee.setDateCreated(resultSet.getString("CreatedTime"));
                employee.setDateUpdated(resultSet.getString("UpdatedTime"));
                employee.setHotelID(resultSet.getString("HotelCode"));
                employee.setRoleID(resultSet.getString("RoleID"));
                employee.setRoleName(resultSet.getString("roleName"));

            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error getEmployeeByEmail " + e.getMessage());
        }
        return employee;

    }

}
