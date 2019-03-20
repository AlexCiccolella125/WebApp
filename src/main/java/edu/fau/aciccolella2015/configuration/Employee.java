package edu.fau.aciccolella2015.configuration;

public class Employee {
	
	String empId = null;
	String firstname = null;
	String  lastname = null;
	String email = null;
	Double Salary = 0.0;
	int depId = 0;
	
	//Default Constructor
	Employee(){	
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
		System.out.print(Salary);
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
		return Salary;
	}
	public void setSalary(Double salary) {
		this.Salary = salary;
	}
	public int getdepId() {
		return depId;
	}
	public void setdepId(int depId) {
		this.depId = depId;
	}
	
	
}