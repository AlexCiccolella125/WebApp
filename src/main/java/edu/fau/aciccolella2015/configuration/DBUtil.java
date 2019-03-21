package edu.fau.aciccolella2015.configuration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fau.aciccolella2015.configuration.Employee;
import edu.fau.aciccolella2015.configuration.JDBCConfig;

public class DBUtil {
	
	public boolean createEmployee(Employee emp) throws ClassNotFoundException, SQLException {
		boolean didSave = false;
		String sql = "insert into EMP values (?,?,?,?,?,?)";
		JDBCConfig db = new JDBCConfig();
		Connection connection = db.getConnection();
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, emp.getEmpId());
		ps.setString(2, emp.getFirstname());
		ps.setString(3, emp.getLastname());
		ps.setString(4, emp.getEmail());
		ps.setDouble(5, emp.getSalary());
		ps.setInt(6, emp.getdepId());
		int count = ps.executeUpdate();
		if(count >0){
			didSave = true;
		}
		return didSave;
	}
	
	public Employee getEmpById(String id) throws ClassNotFoundException, SQLException {
		Employee emp = null;
		String sql = "select * from EMP where empId = ?";
		JDBCConfig db = new JDBCConfig();
		Connection connection = db.getConnection();
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery(); 
		if(rs.next()){
			emp = new Employee();
			emp.setEmpId(rs.getString(1));
			emp.setFirstname(rs.getString(2));
			emp.setLastname(rs.getString(3));
			emp.setEmail(rs.getString(4));
			emp.setSalary(rs.getDouble(5));
			emp.setdepId(rs.getInt(6));
		}
		return emp;
	}
	
	//creates a list of all employees from the database
	public List<Employee> getAllEmployees() throws ClassNotFoundException, SQLException{
		
		String sql = "select * from EMP";
		JDBCConfig db = new JDBCConfig();//Config class creation
		//create the connection class defined by Config class
		Connection connection = db.getConnection();
		//figure out what the statement class does
		Statement statement = connection.createStatement();
		//statement class seems to allow queries to database, 
		//the SQL variable is defined above and can be any SQL statement
		//takes a string
		ResultSet rs = statement.executeQuery(sql);
		//employee list is made here, this is what will be returned
		List<Employee> list = new ArrayList<Employee>();
		//cycle and add all employees to the List
		while(rs.next()){
			Employee emp = new Employee();
			emp.setEmpId(rs.getString(1));
			emp.setFirstname(rs.getString(2));
			emp.setLastname(rs.getString(3));
			emp.setEmail(rs.getString(4));
			emp.setSalary(rs.getDouble(5));
			emp.setdepId(rs.getInt(6));
			list.add(emp);
			//emp.printEmployee();
		}
		return list;
	}
}
