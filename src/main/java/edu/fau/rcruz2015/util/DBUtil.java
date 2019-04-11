package edu.fau.rcruz2015.util;
import java.util.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.util.ArrayList;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import edu.fau.rcruz2015.week11model.Department;
import edu.fau.rcruz2015.week11services.EmployeeService;
import edu.fau.rcruz2015.week11services.UserService;

public class DBUtil {
	
	public ArrayList<Student> getAllStudents() throws FileNotFoundException{
		String sFileName = "C:\\Users\\cruzr\\Documents\\FAU\\ISM 4243\\Students.txt";
		String sInputLine = "";
		File fileToOpen = new File(sFileName);
		String[] saTokens = null;
		Scanner inputFile = new Scanner(fileToOpen);
		
		ArrayList<Student> studentList = new ArrayList<Student>();
		while(inputFile.hasNext()){
			sInputLine = inputFile.nextLine();
			saTokens = sInputLine.split(":");
			Student myStu = new Student();
			myStu.setFirstName(saTokens[0]);
			myStu.setLastName(saTokens[1]);
			myStu.setQuiz1(Integer.parseInt(saTokens[2]));
			myStu.setQuiz2(Integer.parseInt(saTokens[3]));
			myStu.setQuiz3(Integer.parseInt(saTokens[4]));
			
			studentList.add(myStu);
		}
		inputFile.close();
		return studentList;
	}
	public Student searchStudent(String lastname, ArrayList<Student> list){
		Student stu = null;
		
		for (int index=0; index<list.size(); index++){
			if(lastname.equalsIgnoreCase(list.get(index).getLastName())){
				stu = list.get(index);
				return stu;
			}
			
		}
		return stu;

	}

	
	public Employee getEmpById(String id) throws Exception {
		Employee emp = null;
		String sql = "select * from Emp where empId = ?";
		DBConfig db = new DBConfig();
		Connection connection = db.getConnection();
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			emp = new Employee();
			emp.setId(rs.getString(1));
			emp.setFirstName(rs.getString(2));
			emp.setLastName(rs.getString(3));
			emp.setEmail(rs.getString(4));
			emp.setSalary(rs.getDouble(5));
			emp.setDeptId(rs.getInt(6));
		}
		return emp;
	}
	

		
	public boolean createEmployee(Employee emp) throws ClassNotFoundException, SQLException {
	boolean didSave = false;
	String sql = "insert into EMP values(?,?,?,?,?)";
	DBConfig db = new DBConfig();
	Connection conn = db.getConnection();
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, emp.getId());
	ps.setString(2, emp.getFirstName());
	ps.setString(3, emp.getLastName());
	ps.setString(4, emp.getEmail());
	ps.setDouble(5, emp.getSalary());
	ps.setInt(6, emp.getDeptId());
	
	int count = ps.executeUpdate();
	if (count > 0) {
		didSave = true;
		
	}
	return didSave;
	}

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
		return EmployeeService.getAll();
	}
	
	public static List<Department> getAllDep(){
		return Department.getAll();
	}
	
	
	public static Employee getEmpById(int id){
		return EmployeeService.getById(id);
	}
	
	public static Department getDepById(int id){
		return Department.getById(id);
	}
	
	public static boolean createEmp (Employee e){
		try {
			return EmployeeService.create(e);
		}
		catch (DuplicateKeyException ex){
			return false;
		}
	}
	
}

}