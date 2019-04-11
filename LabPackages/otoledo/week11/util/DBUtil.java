package edu.fau.otoledo.week11.util;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.dao.DuplicateKeyException;

import edu.fau.group3.model.User;
import edu.fau.otoledo.week11.configuration.SpringJdbcConfig;
import edu.fau.otoledo.week11.model.Department;
import edu.fau.otoledo.week11.model.Employee;
import edu.fau.otoledo.week11.services.DepartmentService;
import edu.fau.otoledo.week11.services.EmployeeService;
import edu.fau.otoledo.week11.services.UserService;



public class DBUtil {
	
	final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
	final static EmployeeService EMPLOYEE_SERVICE = CONTEXT.getBean(EmployeeService.class);
	final static DepartmentService DEPARTMENT_SERVICE = CONTEXT.getBean(DepartmentService.class);
	final static UserService USER_SERVICE = CONTEXT.getBean(UserService.class);
	
	public static List<User> getAllUsers(){
		return USER_SERVICE.getAll();
	}
	
	public static User getUserById(int id){
		return USER_SERVICE.getById(id);
	}
	
	public static int checkUsernameAndPassword(String username, String password){
		List<User> userList = USER_SERVICE.getAll();
		
		for	(int i = 0 ; i < userList.size() ; i++){
			if (userList.get(i).getUsername().equals(username)){
				if (userList.get(i).getPassword().equals(password)){
					return userList.get(i).getUserId();
				}
				break;
			}
		}return -1;
	}
	public static List<Employee> getAllEmp(){
		return EMPLOYEE_SERVICE.getAll();
	}
	
	public static List<Department> getAllDep(){
		return DEPARTMENT_SERVICE.getAll();
	}
	
	
	public static Employee getEmpById(int id){
		return EMPLOYEE_SERVICE.getById(id);
	}
	
	public static Department getDepById(int id){
		return DEPARTMENT_SERVICE.getById(id);
	}
	
	public static boolean createEmp (Employee e){
		try {
			return EMPLOYEE_SERVICE.create(e);
		}
		catch (DuplicateKeyException ex){
			return false;
		}
	}
	
}
