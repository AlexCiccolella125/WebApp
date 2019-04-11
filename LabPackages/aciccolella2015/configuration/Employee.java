package edu.fau.aciccolella2015.configuration;

public class Employee {
	
	String empId = null;
	String firstname = null;
	String  lastname = null;
	String email = null;
	Double salary = 0.0;
	int depId = 0;
	
	//Default Constructor
	public Employee(){	
	}
	
	public Employee(String ID, String Name, String LastName, String Email, Double Salary, int DepID){	
		setEmpId(ID);
		setFirstname(Name);
		setLastname(LastName);
		setEmail(Email);
		setSalary(Salary);
		setdepId(DepID);
	}
	
	
	
	//print employee information
	public void printEmployee(){
		System.out.print(empId);
		System.out.print(" ");
		System.out.print(firstname);
		System.out.print(" ");
		System.out.print(lastname);
		System.out.print(" ");
		System.out.print(email);
		System.out.print(" ");
		System.out.print(salary);
		System.out.print(" ");
		System.out.println(depId);
	}
	
	
	
	//auto generated getters and setters
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public int getdepId() {
		return depId;
	}
	public void setdepId(int depId) {
		this.depId = depId;
	}
	
	
}