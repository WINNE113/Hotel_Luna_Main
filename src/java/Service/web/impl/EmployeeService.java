package Service.web.impl;

import Entites.web.EmployeeEntity;
import Dao.EmployeeRepository;

public class EmployeeService {
    private EmployeeRepository employeeRepository = new EmployeeRepository();

    public  EmployeeEntity getEmployeeByEmail(String email) {
       return employeeRepository.getEmployeeByEmail(email);
    }
}
