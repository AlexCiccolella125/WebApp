package edu.fau.otoledo.week11.util;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import edu.fau.otoledo.week11.configuration.SpringJdbcConfig;
import edu.fau.otoledo.week11.services.EmployeeService;
import edu.fau.otoledo.week11.model.*;

public class DBUtil {

private final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
private final static EmployeeService EMPLOYEE_SERVICE =  CONTEXT.getBean(EmployeeService.class);

public static List<Employee> getAllEmployee(){
return EMPLOYEE_SERVICE.getAll();
}

public static Employee getEmpById (int id){
return EMPLOYEE_SERVICE.getById(id);
}

public static boolean createEmployee(Employee emp){
return EMPLOYEE_SERVICE.create(emp);
}

public static boolean updateEmployee (Employee emp){
return EMPLOYEE_SERVICE.update(emp);
}
}
